import Ember from "ember";
import MessagesBaseController from "shared-goodcity/controllers/messages_base";

export default MessagesBaseController.extend({
  item: null,
  offer: null,
  noMessage: Ember.computed.empty("model"),
  offerDetailsController: Ember.inject.controller("offer/offer_details"),

  alert: Ember.inject.service(),
  confirm: Ember.inject.service(),
  i18n: Ember.inject.service(),

  cancelByDonor: Ember.computed('item', {
    get() {
      return false;
    },
    set(key, value) {
      return value;
    }
  }),

  isItemVanished: Ember.computed.or('item.isDeleted', 'item.isDeleting'),

  showDeleteError: Ember.observer('item', 'isItemVanished', function(){
    var currentPath = window.location.href;

    if(this.get("isItemVanished") && !this.get("cancelByDonor")) {
      if(currentPath.indexOf(`items/${this.get("item.id")}`) >= 0) {
        this.send("openAlertModal", this.get("i18n").t("404_error"), () => this.transitionTo("offers"));
      }
    }
  }),

  actions: {
    removeItem(item) {
      var controller = this;
      var offer = item.get('offer');
      controller.set("offer", offer);
      controller.set("item", item);

      if (offer.get("state") !== "draft" && offer.get("items.length") <= 1) {
        this.send('openModal', 'item/confirm_last_item_deletion', 'item/messages');
        return;
      }

      this.send('openModal', 'item/confirm_item_deletion', 'item/messages');
    },

    deleteOffer() {
      this.get("offerDetailsController").send("cancelOffer", this.get("offer"), true);
    },

    deleteItem() {
      var controller = this;
      this.set("cancelByDonor", true);
      var offer = this.get('offer');
      var item = this.get("item");
      var loadingView = controller.container.lookup('component:loading').append();

      offer.get('items').removeObject(item);

      item.destroyRecord().then(function(){
        if(offer.get('itemCount') === 0) {
          controller.transitionToRoute("offer");
        } else {
          controller.transitionToRoute("offer.offer_details");
        }
      })
      .finally(() => {
        loadingView.destroy();
        controller.set("cancelByDonor", false);
      });
    },

    closeOverlay() {
      this.send('closeModal');
    },
  }

});

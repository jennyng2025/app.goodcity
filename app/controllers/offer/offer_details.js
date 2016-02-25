import Ember from 'ember';
import '../../computed/local-storage';
import recordsUtil from '../../utils/records';
import ItemBaseController from "../item/edit_images";

export default ItemBaseController.extend({
  items: Ember.computed.alias('model.items'),
  sortProperties: ["latestUpdatedTime:desc"],
  sortedItems: Ember.computed.sort("offerAndItems", "sortProperties"),
  confirm: Ember.inject.service(),
  i18n: Ember.inject.service(),
  alert: Ember.inject.service(),

  cancelByDonor: Ember.computed('model', {
    get() {
      return false;
    },
    set(key, value) {
      return value;
    }
  }),

  isOfferVanished: Ember.computed.or('model.isDeleted', 'model.isDeleting'),

  showDeleteError: Ember.observer('model', 'isOfferVanished', function(){
    var currentPath = window.location.href;

    if(this.get("isOfferVanished") && !this.get("cancelByDonor")) {
      if(currentPath.indexOf(`offers/${this.get("model.id")}`) >= 0 && currentPath.indexOf("items") < 0) {
        this.get("alert").show(this.get("i18n").t("404_error"), () => this.transitionTo("offers"));
      }
    }
  }),

  hasActiveGGVOrder: Ember.computed.alias('model.delivery.gogovanOrder.isActive'),

  offerAndItems: Ember.computed('model', 'items.@each.state', function(){
    // avoid deleted-items which are not persisted yet.
    var elements = this.get('items').rejectBy('state', 'draft').rejectBy('isDeleted', true).toArray();

    // add offer to array for general messages display
    elements.push(this.get("model"));
    return elements;
  }),

  offers: Ember.computed(function(){
    return this.store.peekAll("offer");
  }),

  displayHomeLink: Ember.computed('offers.@each.state', function(){
    return this.get("offers").rejectBy('state', 'draft').get('length') > 0;
  }),

  addItemMessage: null,

  actions: {
    addItem() {
      var message;
      if(this.get('model.isScheduled')) {
        if(this.get('model.hasCrossroadsTransport')) {
          message = this.get("i18n").t("offer.offer_details.crossroads_booking_alert");
        } else {
          message = this.get("i18n").t("offer.offer_details.ggv_booking_alert");
        }

        this.set("addItemMessage", message);
        this.send('openModal', 'offer/confirm_add_item', 'offer/offer_details');
      } else {
        this.send('allowAddItem');
      }
    },

    allowAddItem() {
      this.send("closeOverlay");

      var draftItemId = this.get("model.items").filterBy("state", "draft").get("firstObject.id");
      if(draftItemId) {
        this.transitionToRoute('item.edit', draftItemId);
      } else {
        this.send("triggerUpload");
      }
    },

    deleteOffer(offer) {
      this.set("cancelByDonor", true);
      var loadingView = this.container.lookup('component:loading').append();
      offer.deleteRecord();
      offer.save()
        .then(() => {
          recordsUtil.unloadRecordTree(offer);
          this.transitionToRoute('offers.index');
        })
        .catch(error => { offer.rollback(); throw error; })
        .finally(() => {loadingView.destroy(); this.set("cancelByDonor", false);});
    },

    cancelOffer(offer, alreadyConfirmed) {
      if(this.get('hasActiveGGVOrder')) {
        this.transitionToRoute('offer.cancel', offer);
      } else if(alreadyConfirmed) {
        this.send("deleteOffer", offer);
      } else{
        this.send('openModal', 'offer/confirm_delete_message', 'offer/offer_details');
      }
    },

    addMoreItem() {
      if(!this.get("model.preventNewItem")){ this.send("addItem"); }
    },

    handleBrokenImage() {
      this.get("model.reviewedBy").set("hasImage", null);
    },

    closeOverlay() {
      return this.send('closeModal');
    }
  }
});

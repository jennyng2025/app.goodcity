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

  actions: {
    addItem: function() {
      var message;
      if(this.get('model.isScheduled')) {
        if(this.get('model.hasCrossroadsTransport')) {
          message = this.get("i18n").t("offer.offer_details.crossroads_booking_alert");
        } else {
          message = this.get("i18n").t("offer.offer_details.ggv_booking_alert");
        }

        this.get("confirm").show(message, () => {
          this.send("allowAddItem");
        });
      } else {
        this.send('allowAddItem');
      }
    },

    allowAddItem: function(){
      var draftItemId = this.get("model.items").filterBy("state", "draft").get("firstObject.id");
      if(draftItemId) {
        this.transitionToRoute('item.edit', draftItemId);
      } else {
        this.send("triggerUpload");
      }
    },

    deleteOffer: function(offer) {
      var loadingView = this.container.lookup('view:loading').append();
      offer.deleteRecord();
      offer.save()
        .then(() => {
          recordsUtil.unloadRecordTree(offer);
          this.transitionToRoute('offers.index');
        })
        .catch(error => { offer.rollback(); throw error; })
        .finally(() => loadingView.destroy());
    },

    cancelOffer: function(offer, alreadyConfirmed){
      if(this.get('hasActiveGGVOrder')) {
        this.transitionToRoute('offer.cancel', offer);
      } else if(alreadyConfirmed) {
        this.send("deleteOffer", offer);
      } else{
        this.get("confirm").show(this.get("i18n").t("delete_confirm"), () => {
          this.send("deleteOffer", offer);
        });
      }
    },

    addMoreItem: function() {
      if(!this.get("model.preventNewItem")){ this.send("addItem"); }
    },

    handleBrokenImage: function() {
      this.get("model.reviewedBy").set("hasImage", null);
    },
  }
});

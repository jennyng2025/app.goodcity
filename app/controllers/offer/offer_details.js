import Ember from 'ember';
import '../../computed/local-storage';
import recordsUtil from '../../utils/records';
import OfferBaseController from "shared.goodcity/controllers/offer_base";

export default OfferBaseController.extend({
  items: Ember.computed.alias('model.items'),
  sortProperties: ["latestUpdatedTime:desc"],
  sortedItems: Ember.computed.sort("offerAndItems", "sortProperties"),
  confirm: Ember.inject.service(),

  hasActiveGGVOrder: Ember.computed.alias('model.delivery.gogovanOrder.isActive'),

  offerAndItems: function() {
    // avoid deleted-items which are not persisted yet.
    var elements = this.get('items').rejectBy('state', 'draft').rejectBy('isDeleted', true).toArray();

    // add offer to array for general messages display
    elements.push(this.get("model"));
    return elements;
  }.property('model', 'items.@each.state'),

  offers: function() {
    return this.store.all("offer");
  }.property(),

  displayHomeLink: function(){
    return this.get("offers").rejectBy('state', 'draft').get('length') > 0;
  }.property('offers.@each.state'),

  actions: {
    deleteOffer: function(offer) {
      var loadingView = this.container.lookup('view:loading').append();
      offer.deleteRecord();
      offer.save()
        .then(() => { recordsUtil.unloadRecordTree(offer); this.transitionToRoute('offers.index'); })
        .catch(error => { offer.rollback(); throw error; })
        .finally(() => loadingView.destroy());
    },

    cancelOffer: function(offer, alreadyConfirmed){
      if(this.get('hasActiveGGVOrder')) {
        this.transitionToRoute('offer.cancel', offer);
      } else if(alreadyConfirmed) {
        this.send("deleteOffer", offer);
      } else{
        this.get("confirm").show(Ember.I18n.t("delete_confirm"), () => {
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

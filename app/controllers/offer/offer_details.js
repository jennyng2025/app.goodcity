import Ember from 'ember';
import '../../computed/local-storage';
import recordsUtil from '../../utils/records';

export default Ember.Controller.extend({
  items: Ember.computed.alias('model.items'),
  sortProperties: ["latestUpdatedTime:desc"],
  sortedItems: Ember.computed.sort("offerAndItems", "sortProperties"),
  joyrideSeen:  Ember.computed.localStorage(),

  hasActiveGGVOrder: Ember.computed.alias('model.delivery.gogovanOrder.isActive'),

  firstEverItem: function(){
    var currentDateTime = new Date();
    var itemCreated = new Date(this.get("model.createdAt").getTime() + 120000);

    if((this.get("model.offersCount") === 1 ) &&
       (this.get("model.itemCount") === 1) &&
       (this.get("joyrideSeen") !== true) &&
       (currentDateTime <= itemCreated)) {
      return true;
    }
    else {
      return false;
    }
   }.property("offers.count", "items.count", "joyrideSeen"),

  offerAndItems: function() {
    // avoid deleted-items which are not persisted yet.
    var elements = this.get('items').rejectBy('state', 'draft').rejectBy('isDeleted', true).toArray();

    // add offer to array for general messages display
    elements.push(this.get("model"));
    return elements;
  }.property('items.@each.state'),

  displayHomeLink: function(){
    return this.store.all('offer').rejectBy('state', 'draft').get('length') > 0;
  }.property('model.state'),

  actions: {
    addItem: function() {
      var draftItemId = this.get("items").filterBy("state", "draft").get("firstObject.id") || "new";
      this.transitionToRoute('item.edit_images', draftItemId);
    },

    cancelOffer: function(offer, alreadyConfirmed){
      if(this.get('hasActiveGGVOrder')) {
        this.transitionToRoute('offer.cancel', offer);
      } else if (alreadyConfirmed || confirm(Ember.I18n.t("delete_confirm"))) {
        var loadingView = this.container.lookup('view:loading').append();

        offer.deleteRecord();
        offer.save()
          .then(() => { recordsUtil.unloadRecordTree(offer); this.transitionToRoute('offers.index'); })
          .catch(error => { offer.rollback(); throw error; })
          .finally(() => loadingView.destroy());
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

import Ember from 'ember';

export default Ember.ArrayController.extend({

  sortProperties: ["latestUpdatedTime:desc"],
  arrangedContent: Ember.computed.sort("offersWithItems", "sortProperties"),

  offersWithItems: function(){
    return this.get('model').rejectBy('itemCount', 0);
  }.property('model.@each.itemCount'),

  actions: {
    newOffer: function(allOffers){
      var offers = allOffers || this;
      var empty_offers = offers.filterBy('itemCount', 0).filterBy('state', 'draft').sortBy('id');
      if (empty_offers.length === 0){
        this.transitionToRoute('offers.new');
      } else {
        this.transitionToRoute('offer', empty_offers.get('firstObject'));
      }
    }
  }

});

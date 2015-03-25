import Ember from 'ember';

export default Ember.ArrayController.extend({
  sortProperties: ["latestUpdatedTime:desc"],
  arrangedContent: Ember.computed.sort("offersWithItems", "sortProperties"),

  offersWithItems: function(){
    return this.get('model').rejectBy('itemCount', 0);
  }.property('model.@each.itemCount')
});

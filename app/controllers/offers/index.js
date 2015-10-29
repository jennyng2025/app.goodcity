import Ember from 'ember';

export default Ember.Controller.extend({
  sortProperties: ["latestUpdatedTime:desc"],
  arrangedContent: Ember.computed.sort("offersWithItems", "sortProperties"),

  offersWithItems: Ember.computed('model.@each.itemCount', function(){
    return this.get('model').rejectBy('itemCount', 0);
  })
});

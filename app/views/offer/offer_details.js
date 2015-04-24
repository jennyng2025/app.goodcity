import Ember from 'ember';
import '../../computed/local-storage';

export default Ember.View.extend({
  store: Ember.inject.service(),

  didInsertElement: function() {
    var offerCount = this.get("store").all("offer").get("length");
    var itemCount = this.get("store").all("item").get("length");
    var recentlyCreated = new Date() - this.get("controller.model.createdAt") <= 12 * 60 * 60 * 1000; // 12 hrs
    var firstEverItem = offerCount === 1 && itemCount === 1 && recentlyCreated;

    if (firstEverItem) {
      Ember.$(document).foundation({
        joyride: {
          modal: true,
          nub_position: 'top',
          tip_animation: 'pop',
          tip_location: 'bottom',
          cookie_monster: true
        }
      }).foundation('joyride', 'start');
    }
  },
});

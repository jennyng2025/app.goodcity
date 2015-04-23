import Ember from 'ember';
import '../../computed/local-storage';

export default Ember.View.extend({
  joyrideSeen:  Ember.computed.localStorage(),
  store: Ember.inject.service(),

  didInsertElement: function() {
    var recentlyCreated = new Date() - this.get("model.createdAt") <= 10 * 60 * 1000; // 10 min
    var offersCount = this.get("store").all("offer").get("length");
    var itemCount = this.get("store").all("offer").get("firstObject.items.length");

    var firstEverItem = offersCount === 1 && itemCount === 1 &&
      this.get("joyrideSeen") !== true && recentlyCreated;

    if (firstEverItem) {
      Ember.$(document).foundation({
        joyride : {
          modal: true,
          nub_position: 'top',
          tip_animation: 'pop',
          tip_location: 'bottom',
          post_ride_callback: () => this.set("joyrideSeen", true)
        }
      }).foundation('joyride', 'start');
    }
  },
});

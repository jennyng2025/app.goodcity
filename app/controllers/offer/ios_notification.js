import Ember from 'ember';

export default Ember.Controller.extend({

  cordova: Ember.inject.service(),

  actions: {
    sendPushNotification() {
      this.get("cordova").initiatePushNotifications();
      this.transitionToRoute('offer.submit');
    }

  }
});

import Ember from 'ember';

export default Ember.Controller.extend({

  cordova: Ember.inject.service(),

  actions: {
    confirmSubmitOffer() {

      if(this.get("cordova").isIOS()) {

        var onEnabled = function() {
          this.transitionToRoute('offer.submit');
        }.bind(this);

        var onDisabled = function() {
          this.transitionToRoute('offer.ios_notification');
        }.bind(this);

        this.get("cordova").verifyIosNotificationSetting(onEnabled, onDisabled);

      } else {
        this.transitionToRoute('offer.submit');
      }
    }

  }
});

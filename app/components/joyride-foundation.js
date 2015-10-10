import Ember from 'ember';
import './../computed/local-storage';
// import initFoundation from './init-foundation';
// export default initFoundation.extend({
export default Ember.Component.extend({
  store: Ember.inject.service(),

  didInsertElement() {
    this._super();

    var offerCount = this.get("store").peekAll("offer").get("length");
    var itemCount = this.get("store").peekAll("item").get("length");
    var recentlyCreated = new Date() - this.get("_controller.model.createdAt") <= 12 * 60 * 60 * 1000; // 12 hrs
    var firstEverItem = offerCount === 1 && itemCount === 1 && recentlyCreated;

    if (firstEverItem) {
      Ember.$().ready(function(){
        Ember.$(document).foundation({
          joyride: {
            modal: true,
            nub_position: 'top',
            tip_animation: 'pop',
            tip_location: 'bottom',
            cookie_monster: true
          }
        }).foundation('joyride', 'start');
      });
    }
  },
});
import Ember from 'ember';
import sendMsg from './../send_message';

export default sendMsg.extend({
  needs: ['offer'],

  offer: function(){
    var offerId = this.get('controllers.offer').get('id');
    return this.store.getById('offer', offerId);
  }.property('controllers.offer.id'),

  staffMessagesPage: Ember.computed.alias('session.currentUser.isStaff'),

  actions: {
    sendMessage: function() {
      this._super(false);
    }
  }
});

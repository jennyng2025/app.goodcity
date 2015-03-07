import Ember from 'ember';
import sendMsg from './../send_message';

export default sendMsg.extend({

  needs: ['item/index', 'item'],

  noMessage: Ember.computed.equal("model.length", 0),
  messageItem: Ember.computed.alias("model.firstObject.item"),

  item: function() {
    var itemId = this.get('controllers.item.model.id');
    return this.store.getById('item', itemId);
  }.property('controllers.item.id', 'messageItem'),

  actions: {
    sendMessage: function() {
      this._super(false, true);
    },

    removeItem: function(item) {
      this.get('controllers.item/index').send('removeItem', item);
    }
  }
});

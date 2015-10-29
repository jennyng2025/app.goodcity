import ReadMessagesRoute from './../read_messages';

export default ReadMessagesRoute.extend({
  item: null,

  model() {
    var itemId = this.modelFor('item').get('id');
    var item = this.store.peekRecord('item', itemId);
    this.set('item', item);

    return this.store.filter('message', function(message) {
      // isPrivate is checked because a reviewer logged in donor app will still receive messages intended for supervisor thread
      return message.get('item.id') === itemId && message.get('isPrivate') === false;
    });
  },

  setupController(controller, model) {
    controller.set('model', model);
    controller.set('item', this.get('item'));
  },
});

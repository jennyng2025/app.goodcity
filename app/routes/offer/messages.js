import ReadMessagesRoute from './../read_messages';

export default ReadMessagesRoute.extend({
  model: function() {
    var offerId = this.modelFor('offer').get('id');
    return this.store.filter('message', function(message) {
      // isPrivate is checked because a reviewer logged in donor app will still receive messages intended for supervisor thread
      return message.get('offer.id') === offerId && message.get('item') === null && message.get('isPrivate') === false;
    });
  }
});

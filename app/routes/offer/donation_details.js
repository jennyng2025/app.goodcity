import AuthorizeRoute from './../authorize';

export default AuthorizeRoute.extend({

  model() {
    var offerId = this.modelFor('offer').get('id');
    return this.store.peekRecord('offer', offerId);
  }
});

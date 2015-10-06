import AuthorizeRoute from './../authorize';

export default AuthorizeRoute.extend({

  model() {
    var offerId = this.modelFor('offer').get('id');
    return this.store.peekRecord('offer', offerId);
  },

  afterModel(my_offer) {
    if(my_offer.get('itemCount') === 0) {
      this.transitionTo('offer', my_offer);
    }
  }
});

import AuthorizeRoute from '../authorize';

export default AuthorizeRoute.extend({
  model: function() {
    var offer = this.store.createRecord('offer');

    offer.save()
      .then(() => this.transitionTo('offer', offer.id))
      .catch(error => {
        this.transitionTo('offers');
        throw error;
      });
  }
});

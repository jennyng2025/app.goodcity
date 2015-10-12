import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submitOffer(saleable) {
      var loadingView = this.container.lookup('component:loading').append();
      var offer = this.store.push('offer', {
        id: this.get('model.id'),
        state_event: 'submit',
        saleable: saleable
      });

      offer.save()
        .then(() => this.transitionToRoute('offer.offer_details'))
        .finally(() => loadingView.destroy());
    }
  }
});

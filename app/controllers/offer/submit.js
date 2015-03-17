import Ember from 'ember';

export default Ember.ObjectController.extend({
  actions: {
    submitOffer: function(saleable) {
      var loadingView = this.container.lookup('view:loading').append();
      var offer = this.store.push('offer', {
        id: this.get('id'),
        state_event: 'submit',
        saleable: saleable
      });

      offer.save()
        .then(() => this.transitionToRoute('offer.offer_details'))
        .finally(() => loadingView.destroy());
    }
  }
});

import Ember from 'ember';
export default Ember.ObjectController.extend({
  needs: ['offer/offer_details'],

  canCancel: Ember.computed.alias('model.delivery.gogovanOrder.isCancelled'),

  driverContact: Ember.computed.alias('model.delivery.gogovanOrder.driverMobile'),

  actions: {
    cancelOffer: function() {
      this.get('controllers.offers/offer_details').send('cancelOffer', this.get('model'));
    }
  }
});

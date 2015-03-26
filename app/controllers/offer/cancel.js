import Ember from 'ember';
import config from '../../config/environment';

export default Ember.ObjectController.extend({
  needs: ['offer/offer_details'],

  canCancel: Ember.computed.alias('model.delivery.gogovanOrder.isCancelled'),
  driverContact: Ember.computed.alias('model.delivery.gogovanOrder.driverMobile'),
  gogovanContact: config.APP.GOGOVAN_CONTACT,

  actions: {
    cancelOffer: function() {
      this.get('controllers.offers/offer_details').send('cancelOffer', this.get('model'));
    }
  }
});

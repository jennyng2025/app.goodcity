import Ember from 'ember';
import config from '../../config/environment';

export default Ember.Controller.extend({
  offerController: Ember.inject.controller('offer/offer_details'),

  canCancel: Ember.computed.alias('model.delivery.gogovanOrder.isCancelled'),
  driverContact: Ember.computed.alias('model.delivery.gogovanOrder.driverMobile'),
  gogovanContact: config.APP.GOGOVAN_CONTACT,

  actions: {
    cancelOffer: function() {
      if(this.get('canCancel')){
        this.get('offerController').send('cancelOffer', this.get('model'));
      }
    }
  }
});

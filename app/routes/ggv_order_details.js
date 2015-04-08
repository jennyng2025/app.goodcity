import Ember from 'ember';
import AjaxPromise from '../utils/ajax-promise';

// params.ggv_id will have format "22-David-8-1011369"
// "offerId-DonorName-GogovanOrderId-GogovanBookingId"

export default Ember.Route.extend({
  model: function(params) {
    var _this = this;
    var offerId = params.ggv_id.split('-')[0];

    return new AjaxPromise("/offers/ggv_order_offer", "GET", null, {id: offerId})
      .then(function(data) {
        _this.store.pushPayload(data);
        return _this.store.getById('offer', data.offer.id);
      })
  },

  afterModel: function(offer, transition) {
    this.set('offer', offer);
    this.set('ggvID', transition.params.ggv_order_details.ggv_id.split('-'));
    var validOffer = offer.get("isScheduled");

    if (!(validOffer && this.validDonorName() && this.validGgvOrderId() && this.validBookingId())) {
      throw { status: 404 };
    }
  },

  offer: function(key, value){
    return (arguments.length > 1) ? value : this.get('model');
  }.property('model'),

  ggvID: function(key,value){
    return (arguments.length > 1) ? value : "";
  }.property('model'),

  validDonorName: function() {
    return this.get("offer.createdBy.firstName") === this.get('ggvID')[1];
  },

  validGgvOrderId: function() {
    return this.get("offer.delivery.gogovanOrder.id") === this.get('ggvID')[2];
  },

  validBookingId: function() {
    return this.get("offer.delivery.gogovanOrder.bookingId") === parseInt(this.get('ggvID')[3]);
  },
});

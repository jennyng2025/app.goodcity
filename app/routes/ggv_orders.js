import Ember from 'ember';
import AjaxPromise from '../utils/ajax-promise';

export default Ember.Route.extend({
  model: function(params) {
    var _this = this;
    return new AjaxPromise("/gogovan_orders/driver_details", "GET", null,
      {id: params.ggv_id})
      .then(function(data) {
        _this.store.pushPayload(data);
        return _this.store.getById('offer', data.offer.id);
      });
  },

  afterModel: function(offer, transition) {
    if(transition.queryParams['gcadmin'] === "true") {
      return true;
    } else {
      var validOffer = offer.get("isScheduled") && offer.get("delivery.gogovanOrder.nonCompleted");
      if(!validOffer) { throw { status: 404 }; }
    }
  }
});

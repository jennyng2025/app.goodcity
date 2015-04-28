import Ember from 'ember';
import AjaxPromise from '../utils/ajax-promise';

export default Ember.Route.extend({

  beforeModel: function (transition) {
    var language = transition.queryParams.ln === "zh-tw" ? "zh-tw" : "en";
    Ember.I18n.translations = Ember.I18n.translation_store[language];
  },

  model: function(params) {
    var _this = this;
    return new AjaxPromise("/gogovan_orders/driver_details", "GET", null, {id: params.ggv_id})
      .then(function(data) {

        _this.store.pushPayload(data);
        return _this.store.getById('offer', data.offer.id);
      });
  },

  afterModel: function(offer) {
    var validOffer = offer.get("isScheduled");
    if(!validOffer) {
      throw { status: 404 };
    }
  }
});

import Ember from 'ember';
import AjaxPromise from './../../utils/ajax-promise';

export default Ember.ObjectController.extend({
  needs: ["offer"],

  offerId: Ember.computed.alias('controllers.offer.id'),

  offer: function(){
    return this.store.getById('offer', this.get('offerId'));
  }.property('offerId'),

  gogovanPrice: function(key, value) {
    if (arguments.length > 1) {
      return value;
    } else {
      var params = {
        districtId: this.session.get('currentUser.address.district.id'),
        offerId: this.get("offerId")
      };

      new AjaxPromise("/gogovan_orders/calculate_price", "POST", this.session.get('authToken'), params)
        .then(data => this.set("gogovanPrice", data.base))
        .catch(error => {
          if (error.status !== 0) {
            throw error;
          }
        });

      return "";
    }
  }.property('offerId'),

  actions: {
    startDelivery: function(delivery_type) {
      var offerId = this.get('controllers.offer').get('id');
      var delivery = this.store.createRecord('delivery', {
        offer: this.store.getById('offer', offerId),
        deliveryType: delivery_type
      });

      var route = this;
      delivery.save().then(function(delivery) {
        switch(delivery_type) {
          case 'Alternate':
            route.transitionToRoute('delivery.book_timeslot', delivery);
            break;
          case 'Gogovan':
            route.transitionToRoute('delivery.book_van', delivery);
            break;
          case 'Drop Off':
            route.transitionToRoute('delivery.drop_off_schedule', delivery);
            break;
        }
      });
    }
  }
});

import Ember from 'ember';
import config from './config/environment';
import GoodcityRouter from 'ember-goodcity/router/router';

var Router = GoodcityRouter.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('offers', function () {
    this.route('index', { path: '/'});
    this.route('new', { path: '/new'});

    this.resource('offer', { path: '/:offer_id'}, function() {
      this.route('index', { path: '/'});
      this.route('confirm');
      this.route('submit');
      this.route('plan_delivery');
      this.route('collection_charges');
      this.route('gogovan_charges');

      this.route('messages');

      this.route('offer_details');
      this.route('transport_details');

      this.resource('delivery', { path: '/delivery/:delivery_id'}, function(){
        this.route('book_timeslot');
        this.route('available_time_slots');
        this.route('contact_details');
        this.route('thank_offer');

        this.route('book_van');
        this.route('confirm_van');
        this.route('porterage_charges');

        this.route('drop_off_schedule');
      });

      this.resource('item', {path: '/items/:item_id'}, function() {
        this.route('index', { path: '/'});
        this.route('edit');
        this.route('edit_images');
        this.route('messages');
      });
    });
  });
});

export default Router;

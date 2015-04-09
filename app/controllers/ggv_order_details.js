import Ember from 'ember';
import config from './../config/environment';

export default Ember.Controller.extend({
  user: Ember.computed.alias('model.createdBy'),
  contact: Ember.computed.alias('model.delivery.contact'),
  districtName: Ember.computed.alias('contact.address.district.name'),

  gmapUrl: function(){
    return config.APP.GMAP_URL;
  }.property(),

  userName: function(){
    return this.get('contact.name') || this.get("user.fullName");
  }.property('contact.name', 'user'),

  userMobile: function(){
    return this.get('contact.mobile') || this.get("user.mobile");
  }.property('contact.mobile', 'user'),
});

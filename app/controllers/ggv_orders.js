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
    var mobile = this.get('contact.mobile') || this.get("user.mobile");
    return mobile ? mobile.split("+852")[1] : "";
  }.property('contact.mobile', 'user'),
});

import Ember from 'ember';
import config from './../config/environment';

export default Ember.Controller.extend({
  gmapUrl: function(){
    return config.APP.GMAP_URL;
  }.property()
});

import ScrollBottom from './../scroll_to_bottom';
import Ember from 'ember';

export default ScrollBottom.extend({
  didInsertElement: function() {
    this._super();
    Ember.$().ready(function(){
      Ember.$("#lightGallery").lightGallery({
        thumbnail: false,
        hideControlOnEnd: true,
        closable: false,
        counter: true,
        swipeThreshold : 50,
        enableTouch : true,
      });
    });
  }
});

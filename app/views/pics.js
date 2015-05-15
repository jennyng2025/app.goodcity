import Ember from 'ember';

export default Ember.View.reopen({
  didInsertElement: function() {
    this._super();
    Ember.$(document).foundation();
  },

});

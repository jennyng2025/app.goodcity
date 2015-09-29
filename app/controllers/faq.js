import Ember from 'ember';

export default Ember.Controller.extend({
  questionAnchor: null,

  actions: {
    displayQuestion: function() {
      var question = this.get("questionAnchor");
      if(question) {
        var scrollOffset = Ember.$("#" + question).offset().top;

        Ember.$('html, body').animate({
          scrollTop: scrollOffset - 130
        }, 'fast');
      }
      return false;
    }
  }
});

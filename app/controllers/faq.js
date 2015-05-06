import Ember from 'ember';

export default Ember.Controller.extend({
  questionAnchor: null,

  isChinese: function() {
    return this.get('session.language') === 'zh-tw';
  }.property('currentLanguage'),

  actions: {
    displayQuestion: function() {
      var question = this.get("questionAnchor");
      if(question) {
        var scrollOffset = Ember.$("#" + question).offset().top;

        Ember.$('html, body').animate({
          scrollTop: scrollOffset - 70
        }, 'fast');
      }
      return false;
    }
  }
});

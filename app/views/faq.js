import Ember from 'ember';

export default Ember.View.reopen({
  didInsertElement: function() {
    this._super();

    Ember.run.scheduleOnce('afterRender', this, function(){
      var controller = this.get('controller');
      if(controller && controller.questionAnchor) {
        controller.send('displayQuestion');
      }
    });

    Ember.$(document).foundation();

    Ember.$().ready(function(){

      Ember.$('.faq_list ul').on('click', 'li a', function(){
        var anchor = Ember.$(this);
        var scrollOffset = Ember.$(anchor.attr('href').split('faq')[1]).offset().top;

        Ember.$('html, body').animate({
          scrollTop: scrollOffset - 70
        }, 'fast');

        return false;
      });

      var questionId = document.location.href.split('#')[1];
      if(questionId) {
        Ember.$('html, body').animate({
          scrollTop: Ember.$("#"+questionId).offset().top - 70
        }, 'fast');
      }
    });
  },

});

import Ember from 'ember';

export default Ember.View.reopen({
  didInsertElement: function() {

    Ember.$(document).foundation();

    Ember.$().ready(function(){

      backToTopLink();

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

    // Back-to-top Link
    function backToTopLink(){
      var offset = 300;
      var duration = 300;

      Ember.$(window).scroll(function() {
        if (Ember.$(this).scrollTop() > offset) {
          Ember.$('.back-to-top').fadeIn(duration);
        } else {
          Ember.$('.back-to-top').fadeOut(duration);
        }
      });

      Ember.$('.back-to-top').click(function() {
        Ember.$('html, body').animate({scrollTop: 0}, duration);
        return false;
      });
    }

  },

});

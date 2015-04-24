import Ember from 'ember';

export default Ember.View.reopen({
  didInsertElement: function() {

    Ember.$(document).foundation();

    Ember.$().ready(function(){

      Ember.$('.faq_list ul').on('click', 'li a', function(event){
        var anchor = $(this);
        var scrollOffset = Ember.$(anchor.attr('href').split('faq')[1]).offset().top;
        Ember.$('html, body').stop().animate({
          scrollTop: scrollOffset - 70
        });
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

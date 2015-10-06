import Ember from 'ember';
// import initFoundation from './init-foundation';
// export default initFoundation.extend({
export default Ember.Component.extend({
  didInsertElement() {
    this._super();

    Ember.run.scheduleOnce('afterRender', this, function(){
      var controller = this.get('_controller');
      if(controller && controller.questionAnchor) {
        controller.send('displayQuestion');
      }
    });

    Ember.$().ready(function(){

      Ember.$('.faq_list ul').on('click', 'li a', function(){
        var anchor = Ember.$(this);
        var scrollOffset = Ember.$(anchor.attr('href').split('faq')[1]).offset().top;

        Ember.$('html, body').animate({
          scrollTop: scrollOffset - 130
        }, 'fast');

        return false;
      });
    });
  },

});

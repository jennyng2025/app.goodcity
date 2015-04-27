import Ember from 'ember';

export default Ember.Route.extend({

  queryParams: {
    questionAnchor: null
  },

  setupController: function(controller, context, params){
    controller.set('questionAnchor', params.queryParams.questionAnchor);
  }

});

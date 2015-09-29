import Ember from 'ember';

export default Ember.Route.extend({

  queryParams: {
    questionAnchor: null
  },

  setupController(controller, context, params) {
    controller.set('questionAnchor', params.queryParams.questionAnchor);
  }

});

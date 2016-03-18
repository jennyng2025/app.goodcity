import Ember from 'ember';

export default Ember.Route.extend({

  queryParams: {
    questionAnchor: null
  },

  setupController(controller, context, params) {
    if (params.queryParams.questionAnchor && params.queryParams.questionAnchor !== "undefined") {
      controller.set('questionAnchor', params.queryParams.questionAnchor);
    } else {
      params.queryParams.questionAnchor = null;
    }
  }

});

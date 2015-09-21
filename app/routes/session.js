import Ember from 'ember';

export default Ember.Route.extend({

  beforeModel: function() {
    if (this.session.get('isLoggedIn')) {
      if(this.get('session.currentUser')) {
        this.transitionTo('/offers');
      } else {
        this.container.lookup("route:application")._loadDataStore();
      }
    }
  }
});

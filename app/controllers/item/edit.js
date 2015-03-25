import Ember from 'ember';

export default Ember.ObjectController.extend({
  formData: function() {
    return {
      donorConditionId: this.get("donorConditionId"),
      donorDescription: this.get("donorDescription")
    };
  }.property("model"),

  actions: {
     submitItem: function() {
      if (this.get("state") === "draft") {
        this.set("state_event", "submit");
      }

      var loadingView = this.container.lookup('view:loading').append();
      this.setProperties(this.get("formData"));

      this.get("model").save()
        .then(() => {
          this.set("state_event", null);
          this.transitionToRoute('offer.offer_details');
        })
        .catch(error => {
          this.get("model").rollback();
          throw error;
        })
        .finally(() => loadingView.destroy());
    }
  }
});

import Ember from 'ember';

export default Ember.Controller.extend({
  formData: function() {
    return {
      donorConditionId: this.get("model.donorConditionId"),
      donorDescription: this.get("model.donorDescription")
    };
  }.property("model"),

  actions: {
    submitItem: function() {
      if (this.get("model.state") === "draft") {
        this.set("model.state_event", "submit");
      }

      var loadingView = this.container.lookup('view:loading').append();
      this.get("model").setProperties(this.get("formData"));

      this.get("model").save()
        .then(() => {
          this.set("model.state_event", null);
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

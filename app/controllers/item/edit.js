import Ember from 'ember';

export default Ember.Controller.extend({

  formData: Ember.computed("model", {
    get: function() {
      var item = this.get('model');
      return {
        donorConditionId: item.get("donorConditionId"),
        donorDescription: item.get("donorDescription")
      };
    },
    set: function(key, value) {
      return {
        donorConditionId: value.get("donorConditionId"),
        donorDescription: value.get("donorDescription")
      };
    }
  }),

  actions: {
    submitItem: function() {
      if (this.get("model.state") === "draft") {
        this.set("model.state_event", "submit");
      }

      var data = this.get("formData");
      this.get("model").setProperties({
        donorDescription: data.donorDescription,
        donorCondition: this.get("store").peekRecord('donorCondition', data.donorConditionId)
      });
      var loadingView = this.container.lookup('view:loading').append();

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
    },

    discardChanges: function(item)  {
      var controller = this;
      var offer = item.get('offer');
      if (item.get("state") === "draft") {
        var loadingView = controller.container.lookup('view:loading').append();
        item.destroyRecord().then(function(){
          var route = offer.get('itemCount') === 0 ? "offer" : "offer.offer_details";
          controller.transitionToRoute(route);
        })
        .finally(() => loadingView.destroy());
      }
      else {
        controller.set("formData", item);
        controller.transitionToRoute("offer.offer_details");
      }
    }
  }
});

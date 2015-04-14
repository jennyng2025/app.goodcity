import Ember from "ember";

export default Ember.Controller.extend({

  actions: {
    removeItem: function(item) {
      var controller = this;
      var offer = item.get('offer');

      if (offer.get("state") !== "draft" && offer.get("items.length") <= 1) {
        if (confirm(Ember.I18n.t("item.cancel_last_item_confirm"))) {
          this.get("offerDetailsController").send("cancelOffer", offer, true);
        }
        return;
      }

      if (confirm(Ember.I18n.t("delete_confirm"))) {
        var loadingView = controller.container.lookup('view:loading').append();

        offer.get('items').removeObject(item);

        item.destroyRecord().then(function(){
          if(offer.get('itemCount') === 0) {
            controller.transitionToRoute("offer");
          } else {
            controller.transitionToRoute("offer.offer_details");
          }
        })
        .finally(() => loadingView.destroy());
      }
    }
  }
});

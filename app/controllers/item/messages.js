import Ember from "ember";
import MessagesBaseController from "ember-goodcity/controllers/messages_base";

export default MessagesBaseController.extend({
  needs: ["item/index", "item", "offer"],
  item: Ember.computed.alias("controllers.item.model"),
  noMessage: Ember.computed.empty("model"),

  actions: {
    removeItem: function(item) {
      this.get("controllers.item/index").send("removeItem", item);
    }
  }
});

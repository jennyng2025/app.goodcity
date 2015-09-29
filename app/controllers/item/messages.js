import Ember from "ember";
import MessagesBaseController from "shared-goodcity/controllers/messages_base";

export default MessagesBaseController.extend({
  item: null,
  itemIndexController: Ember.inject.controller("item/index"),
  noMessage: Ember.computed.empty("model"),

  actions: {
    removeItem: function(item) {
      this.get("itemIndexController").send("removeItem", item);
    }
  }
});

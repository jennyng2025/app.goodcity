import Ember from 'ember';
import startApp from '../helpers/start-app';
import syncDataStub from '../helpers/empty-sync-data-stub';

var TestHelper = Ember.Object.createWithMixins(FactoryGuyTestMixin);
var App, testHelper, offer1, offer2, reviewer, reviewer1, reviewerName,
  offer7, offer3, offer4, delivery1, delivery2, offer5, delivery3, offer6,
  offer8, reviewer1Name, ggv_order3, delivery3, offer9;

module('Driver: GGV Order details', {
  setup: function() {
    App = startApp();
    testHelper = TestHelper.setup(App);
    syncDataStub(testHelper);

    reviewer = FactoryGuy.make("user");
    reviewer1 = FactoryGuy.make("user_with_image");
    ggv_order3 = FactoryGuy.make("gogovan_active_order");
    delivery3 = FactoryGuy.make("delivery", { deliveryType: "Gogovan", gogovanOrder: ggv_order3 });
    offer9 = FactoryGuy.make("offer_with_items", {state:"scheduled", delivery: delivery3});
  },

  teardown: function() {
    Em.run(function() { testHelper.teardown(); });
    Ember.run(App, 'destroy');
  }
});

test("Display address information", function() {
  visit('/ggv_order/11-$$-Kendrick-$$-Kiehn-$$-1');

  andThen(function() {
    equal(Ember.$(".delivery-from").length, 1);
    equal(Ember.$(".list-items li").length, 2);
    equal(Ember.$(".list-items li").text().indexOf("example") > 0, true);
    equal(Ember.$(".delivery-to").text().trim().indexOf(Ember.I18n.t("ggv_order.crossroads_address")) > 0, true);
  });
});

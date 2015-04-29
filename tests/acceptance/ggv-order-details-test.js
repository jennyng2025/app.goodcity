import Ember from 'ember';
import startApp from '../helpers/start-app';
import syncDataStub from '../helpers/empty-sync-data-stub';

var TestHelper = Ember.Object.createWithMixins(FactoryGuyTestMixin);
var App, testHelper;

module('Driver: GGV Order details', {
  setup: function() {
    App = startApp();
    testHelper = TestHelper.setup(App);
    syncDataStub(testHelper);
  },

  teardown: function() {
    Em.run(function() { testHelper.teardown(); });
    Ember.run(App, 'destroy');
  }
});

test("Display address information in English", function() {
  visit('/ggv_orders/111255');

  andThen(function() {
    equal(Ember.$(".delivery-from").length, 1);
    equal(Ember.$(".list-items li").length, 2);
    equal(Ember.$(".list-items li").text().indexOf("example") > 0, true);
    equal(Ember.$(".delivery-to").text().trim().indexOf(Ember.I18n.t("ggv_order.crossroads_address1")) >= 0, true);
  });
});

test("Display address information in Chinese", function() {
  visit('/ggv_orders/111255?ln=zh-tw');

  andThen(function() {
    equal(Ember.$(".list-items li").text().indexOf("example") > 0, true);
    equal(Ember.$(".offer-status .msg").text().trim().indexOf("您到達時，我們的職員會核對並確認下列資料")  >= 0, true);
    window.localStorage.setItem("language", '"en"');
  });
});

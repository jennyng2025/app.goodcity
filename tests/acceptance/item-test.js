import Ember from 'ember';
import startApp from '../helpers/start-app';
import syncDataStub from '../helpers/empty-sync-data-stub';
import FactoryGuy from 'ember-data-factory-guy';
import TestHelper from 'ember-data-factory-guy/factory-guy-test-helper';

var App, offer, item, display_item_url;

module('Display Item', {
  setup: function() {
    App = startApp();
    TestHelper.setup();
    syncDataStub(TestHelper);

    offer = FactoryGuy.make("offer");
    item = FactoryGuy.make("item",{offer:offer});
    FactoryGuy.makeList("image", 2, {item:item});
    display_item_url = "/offers/" + offer.id + "/items/" + item.id + "/messages";
  },
  teardown: function() {
    Em.run(function() { TestHelper.teardown(); });
    Ember.run(App, 'destroy');
  }
});

test("Display Item Details", function() {
  expect(3);

  visit(display_item_url);

  andThen(function(){
    equal(currentURL(), display_item_url);
    equal($('body').text().indexOf(item.get('donorDescription')) >= 0, true);
    equal(find("img.thumb").length, 1);
  });
});

test("Back button redirects to its offer details", function() {
  expect(1);

  visit(display_item_url);
  click('.back');

  andThen(function() {
    equal(currentURL(), "/offers/" + offer.id + "/offer_details");
  });
});

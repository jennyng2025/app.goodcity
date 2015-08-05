import Ember from 'ember';
import startApp from '../helpers/start-app';
import FactoryGuy from 'ember-data-factory-guy';
import TestHelper from 'ember-data-factory-guy/factory-guy-test-helper';

var App;

module('Create New Offer', {
  setup: function() {
    App = startApp();
    TestHelper.setup();

    // prevent request to express server which returns 4 offers
    TestHelper.handleFindAll("offer", 0);
  },
  teardown: function() {
    Em.run(function() { TestHelper.teardown(); });
    Ember.run(App, 'destroy');
  }
});

test("should create new offer", function() {
  expect(3);

  FactoryGuy.make("offer_with_items", {id:1}); // check offer with items is not returned
  TestHelper.handleCreate("offer").andReturn({id:5});

  visit("/offers/new");

  andThen(function() {
    // test: created new offer and redirected to its show page.
    equal(currentURL(), '/offers/5');

    //test: item count zero
    equal($.trim(find('.tab-bar-section .title').text()), "Offer items (0)");

    //test: no items message
    equal($.trim($('.no-items').text()), "You don't have any items in this offer yet. Please add your first item!");
  });
});

test("should redirect to previous empty offer", function() {
  expect(4);

  var currentUserId = JSON.parse(window.localStorage.currentUserId);
  var user = FactoryGuy.make("user", {id:currentUserId});
  FactoryGuy.make("offer_with_items", {id:1, createdBy:user}); // check offer with items is not returned
  FactoryGuy.make("offer",{"id":5, createdBy:user});

  visit("/offers");

  andThen(function() {
    equal(currentURL(), '/offers');

    click("a:contains('Make a New Donation')");

    andThen(function(){
      equal(currentURL(), '/offers/5');

      //test: item count zero
      equal($.trim(find('.tab-bar-section .title').text()), "Offer items (0)");

      //test: no items message
      equal($.trim(find('.no-items').text()), "You don't have any items in this offer yet. Please add your first item!");
    });
  });
});

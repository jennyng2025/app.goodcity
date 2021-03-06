import Ember from 'ember';
import startApp from '../helpers/start-app';
import FactoryGuy from 'ember-data-factory-guy';

var App, offer, t;

module('Display not found error', {
  setup: function() {
    App = startApp();
    Ember.run.later = () => true;
    offer = FactoryGuy.make("offer");
    var i18n = App.__container__.lookup('service:i18n');
    t = i18n.t.bind(i18n);
    App.__container__.lookup("service:logger").error = () => {};
  },
  teardown: function() {
    Ember.run(App, 'destroy');
  }
});

test("Display error popup for invalid offer", function() {
  $('.reveal-modal').remove();
  visit("/offers/invalid/offer_details");

  andThen(function(){
    equal(Ember.$("#messageBoxText").text(), t("404_error").toString());
    Ember.$('#errorModal').foundation('reveal', 'close');
  });
});

test("Display error popup for invalid item", function() {
  $('.reveal-modal').remove();
  visit("/offers/" + offer.id + "/items/invalid/messages");
  $.mockjax({url:"/api/v1/items/*",status:404});

  andThen(function(){
    equal(Ember.$("#messageBoxText").text(), t("404_error").toString());
    Ember.$('#errorModal').foundation('reveal', 'close');
  });
});

test("Display not-found page for invalid url", function() {
  $('.reveal-modal').remove();
  visit("/invalid_url");
  andThen(function(){
    equal(currentURL(), "/invalid_url");
    notEqual(Ember.$(".xy-center").text().indexOf(t("not_found")), -1, "not found message found");
  });
});

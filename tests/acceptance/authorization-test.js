import Ember from 'ember';
import startApp from '../helpers/start-app';

var App;

module('Authorization', {
  setup: function() {

  },
  teardown: function() {
    Ember.run(App, 'destroy');
  }
});

test("Rediect to login if not logged-in", function() {
  App = startApp();
  expect(2);

  lookup('service:session').set('authToken', null);

  visit("/offers");

  andThen(function() {
    equal(Ember.$("#errorMessage").text(), Ember.I18n.t("must_login"));
    click(Ember.$(".ok"));
  });

  andThen(function() {
    equal(currentURL(), '/login');
  });
});

test("On login page redirect to home-page if already logged-in", function() {
  App = startApp();
  expect(1);

  visit("/login");

  andThen(function() {
    equal(currentURL(), '/offers');
  });
});

test("On register page redirect to home-page if already logged-in", function() {
  App = startApp();
  expect(1);

  visit("/register");

  andThen(function() {
    equal(currentURL(), '/offers');
  });
});

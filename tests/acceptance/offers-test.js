import Ember from 'ember';
import startApp from '../helpers/start-app';

var App, testHelper, offer, offer1, offer2, item, item1, item2, item3, offerUrl,
  offer1Url, offer2Url, offer3, offer4, item3, item4, offer3Url, offer4Url, del,
  del1, del2, offer5, item5, offer5Url,
  TestHelper = Ember.Object.createWithMixins(FactoryGuyTestMixin);

module('Offer Index View', {
  setup: function() {
    App = startApp({});
    testHelper = TestHelper.setup(App);

    offer = FactoryGuy.make("offer", {state:"under_review"});
    item = FactoryGuy.make("item", {state:"accepted", offer: offer});

    offer1 = FactoryGuy.make("offer", {state:"reviewed"});
    item1 = FactoryGuy.make("item", {state:"accepted", offer: offer1});

    offer2 = FactoryGuy.make("offer", {state:"closed"});
    item2 = FactoryGuy.make("item", {state:"accepted", offer: offer2});

    del = FactoryGuy.make("delivery", {deliveryType:"Drop Off"});
    offer3 = FactoryGuy.make("offer", {state:"scheduled", delivery: del});
    item3 = FactoryGuy.make("item", {state:"accepted", offer: offer3});

    del1 = FactoryGuy.make("delivery", {deliveryType:"Alternate"});
    offer4 = FactoryGuy.make("offer", {state:"scheduled", delivery: del1});
    item4 = FactoryGuy.make("item", {state:"accepted", offer: offer4});

    del2 = FactoryGuy.make("delivery", {deliveryType:"Gogovan"});
    offer5 = FactoryGuy.make("offer", {state:"scheduled", delivery: del2});
    item5 = FactoryGuy.make("item", {state:"accepted", offer: offer5});

  },
  teardown: function() {
    Em.run(function() { testHelper.teardown(); });
    Ember.run(App, 'destroy');
  }
});

test('Offers list & link to add items', function() {
  // offer3.set("delivery.deliveryType", "Drop Off")
  visit('/offers');

  andThen(function() {
    equal(currentURL(), "/offers");
    offerUrl = "/offers/"+offer.id+"/offer_details";
    equal(Ember.$("a[href='"+offerUrl+"'] h3").text().indexOf("In review") > -1, true);

    offer1Url = "/offers/"+offer1.id+"/offer_details";
    equal(Ember.$("a[href='"+offer1Url+"'] h3").text().indexOf("Please arrange transport") > -1, true);

    offer2Url = "/offers/"+offer2.id+"/offer_details";
    equal(Ember.$("a[href='"+offer2Url+"'] h3").text().indexOf("Closed") > -1, true);

    offer3Url = "/offers/"+offer3.id+"/offer_details";
    equal(Ember.$("a[href='"+offer3Url+"'] h3").text().indexOf("You will deliver to Crossroads") > -1, true);

    offer4Url = "/offers/"+offer4.id+"/offer_details";
    equal(Ember.$("a[href='"+offer4Url+"'] h3").text().indexOf("Crossroads collection booked") > -1, true);

    offer5Url = "/offers/"+offer5.id+"/offer_details";
    equal(Ember.$("a[href='"+offer5Url+"'] h3").text().indexOf("Van booked") > -1, true);

    // display offers that have at least 1 items
    // equal(find('.list-items li').length, 3);

    // test: link to complete offers
    equal(find("a:contains('Complete this Offer')").length > 0, true);
  });
});

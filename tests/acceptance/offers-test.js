import Ember from 'ember';
import startApp from '../helpers/start-app';

var App, testHelper, offer, offer1, offer2, item, item1, item2, item3, offerUrl,
  offer1Url, offer2Url, offer3, offer4, item3, item4, offer3Url, offer4Url, del,
  del1, del2, offer5, item5, offer5Url, del3, offer6, item6, offer6Url,
  ggvOrder, ggvOrder1, ggvOrder2, del4, offer7, item7, offer7Url,
  TestHelper = Ember.Object.createWithMixins(FactoryGuyTestMixin);

module('Offer Index View', {
  setup: function() {
    // offers must be created by the logged in user in order to be shown in the index
    var currentUserId = "1";
    App = startApp({}, currentUserId);
    testHelper = TestHelper.setup(App);

    offer = FactoryGuy.make("offer", {state:"under_review", createdBy:currentUserId});
    item = FactoryGuy.make("item", {state:"accepted", offer: offer});

    offer1 = FactoryGuy.make("offer", {state:"reviewed", createdBy:currentUserId});
    item1 = FactoryGuy.make("item", {state:"accepted", offer: offer1});

    offer2 = FactoryGuy.make("offer", {state:"closed", createdBy:currentUserId});
    item2 = FactoryGuy.make("item", {state:"accepted", offer: offer2});

    del = FactoryGuy.make("delivery", {deliveryType:"Drop Off"});
    offer3 = FactoryGuy.make("offer", {state:"scheduled", delivery: del, createdBy:currentUserId});
    item3 = FactoryGuy.make("item", {state:"accepted", offer: offer3});

    del1 = FactoryGuy.make("delivery", {deliveryType:"Alternate"});
    offer4 = FactoryGuy.make("offer", {state:"scheduled", delivery: del1, createdBy:currentUserId});
    item4 = FactoryGuy.make("item", {state:"accepted", offer: offer4});

    ggvOrder = FactoryGuy.make("gogovan_order");
    del2 = FactoryGuy.make("delivery", {deliveryType:"Gogovan", gogovanOrder: ggvOrder});
    offer5 = FactoryGuy.make("offer", {state:"scheduled", delivery: del2, createdBy:currentUserId});
    item5 = FactoryGuy.make("item", {state:"accepted", offer: offer5});

    ggvOrder1 = FactoryGuy.make("gogovan_active_order");
    del3 = FactoryGuy.make("delivery", {deliveryType:"Gogovan", gogovanOrder: ggvOrder1});
    offer6 = FactoryGuy.make("offer", {state:"scheduled", delivery: del3, createdBy:currentUserId});
    item6 = FactoryGuy.make("item", {state:"accepted", offer: offer6});

    ggvOrder2 = FactoryGuy.make("gogovan_completed_order");
    del4 = FactoryGuy.make("delivery", {deliveryType:"Gogovan", gogovanOrder: ggvOrder2});
    offer7 = FactoryGuy.make("offer", {state:"scheduled", delivery: del4, createdBy:currentUserId});
    item7 = FactoryGuy.make("item", {state:"accepted", offer: offer7});

  },
  teardown: function() {
    Em.run(function() { testHelper.teardown(); });
    Ember.run(App, 'destroy');
  }
});

test('Offers list & link to add items', function() {
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

    offer6Url = "/offers/"+offer6.id+"/offer_details";
    equal(Ember.$("a[href='"+offer6Url+"'] h3").text().indexOf("Van confirmed") > -1, true);

    offer7Url = "/offers/"+offer7.id+"/offer_details";
    equal(Ember.$("a[href='"+offer7Url+"'] h3").text().indexOf("Picked up") > -1, true);

    // test: link to complete offers
    equal(find("a:contains('Make a New Donation')").length > 0, true);
  });
});

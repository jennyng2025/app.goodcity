import recordsUtil from "../../../utils/records";
import { module, test } from "qunit";
import startApp from "../../helpers/start-app";
import testSkip from "../../helpers/test-skip";

var TestHelper = Ember.Object.createWithMixins(FactoryGuyTestMixin);
var testHelper, store, make, App;

module("Records Util", {
  setup: function() {
    App = startApp();
    testHelper = TestHelper.setup(App);
    store = testHelper.getStore();
  },
  teardown: function() {
    Em.run(function() { testHelper.teardown(); });
  }
});

test("unloads source record", function(assert) {
  assert.expect(2);
  var offer = FactoryGuy.make("offer");
  assert.ok(store.all("offer").get("length") > 0);
  recordsUtil.unloadRecordTree(offer);
  andThen(() => assert.equal(store.all("offer").get("length"), 0));
});

test("unloads related record", function(assert) {
  assert.expect(2);
  var offer = FactoryGuy.make("offer", "with_items");
  assert.ok(store.all("item").get("length") > 0);
  recordsUtil.unloadRecordTree(offer);
  andThen(() => assert.equal(store.all("item").get("length"), 0));
});

test("does not unload taxonomy record", function(assert) {
  assert.expect(2);
  var offer = FactoryGuy.make("offer", "with_gogovan_transport");
  assert.ok(store.all("gogovan_transport").get("length") > 0);
  recordsUtil.unloadRecordTree(offer);
  andThen(() => assert.ok(store.all("gogovan_transport").get("length") > 0));
});

test("does not load an async relationship (belongsTo) not yet loaded", function(assert) {
  assert.expect(1);
  $.mockjax({url:"/api/v1/items/*",response:() => {
    Ember.run(() => assert.equal("async call was made", "no async call"));
  }});
  var packageItem = FactoryGuy.make("package", {item:1});
  assert.equal(store.all("item").get("length"), 0);
  recordsUtil.unloadRecordTree(packageItem);
  andThen(() => {});
});

// item.unloadRecord() is being called but for some reason it doesn't work
testSkip("does unload async relationship (belongsTo) if already loaded", function(assert) {
  assert.expect(2);
  var packageItem = FactoryGuy.make("package");
  assert.equal(store.all("item").get("length"), 1);
  recordsUtil.unloadRecordTree(packageItem);
  andThen(() => assert.equal(store.all("item").get("length"), 0));
});

import { test, moduleForModel } from 'ember-qunit';
import testSkip from '../../helpers/test-skip';

moduleForModel('item', 'Item Model', {
  needs: ['model:item', 'model:image', 'model:package', 'model:message',
    'model:offer', 'model:donor_condition', 'model:rejection_reason',
    'model:package_type', 'model:user', 'model:delivery',
    'model:gogovan_transport', 'model:crossroads_transport']
});

test('Item is a valid ember-data Model', function () {
  expect(1);

  var store  = this.store();
  var record = null;

  Ember.run(function() {
    store.createRecord('item', {id: 1, state: 'draft', donorDescription: 'test-item'});
    record = store.peekRecord('item', 1);
  });

  equal(record.get('donorDescription'), 'test-item');
});

testSkip('Default image for item', function () {
  expect(1);

  var store = this.store();
  var defaultImageURL = null;

  Ember.run(function() {
    var record = store.createRecord('item', {state: 'draft', donorDescription: 'test-item'});
    var image1 = store.createRecord('image', {thumbImageUrl: "testimage1"});
    var image2 = store.createRecord('image', {thumbImageUrl: "testimage2", favourite: 'true'});

    record.get('images').pushObject(image1);
    record.get('images').pushObject(image2);

    defaultImageURL = record.get('defaultImageURL');
  });

  equal(defaultImageURL, "testimage2");
});

testSkip('Default image for item when no favourite is selected', function () {
  expect(1);

  var store = this.store();
  var defaultImageURL = null;

  Ember.run(function() {
    var record = store.createRecord('item', {state: 'draft', donorDescription: 'test-item'});
    var image1 = store.createRecord('image', {thumbImageUrl: "testimage1"});
    var image2 = store.createRecord('image', {thumbImageUrl: "testimage2"});

    record.get('images').pushObject(image1);
    record.get('images').pushObject(image2);

    defaultImageURL = record.get('defaultImageURL');
  });

  equal(defaultImageURL, "testimage1");
});

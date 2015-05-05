import Ember from 'ember';

export default Ember.Controller.extend({
  isChinese: function() {
    return this.get('session.language') === 'zh-tw';
  }.property('currentLanguage'),
});

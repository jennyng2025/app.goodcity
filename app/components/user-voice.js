import Ember from 'ember';

export default Ember.Component.extend({

  didInsertElement() {
    var height = (Ember.$(window).height() - 82) + "px";

    UserVoice.push(['set', {

      contact_enabled: true,

      strings: {
        // Menu items
        contact_menu_label: '',
        contact_title: ''
      }
    }]);

    UserVoice.push(['embed', '#widget', {
      mode: 'contact',
      height: height,
    }]);
  }
});

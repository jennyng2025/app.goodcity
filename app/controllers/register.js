import Ember from 'ember';
import AjaxPromise from '../utils/ajax-promise';
import config from '../config/environment';

export default Ember.Controller.extend({
  alert: Ember.inject.service(),

  actions: {
    registerUser: function() {
      var loadingView = this.container.lookup('view:loading').append();
      var mobilePhone = config.APP.HK_COUNTRY_CODE + this.get('mobilePhone');
      var firstName = this.get('firstName');
      var lastName = this.get('lastName');
      var district_id = Ember.$('.district-selection').attr('selected_id') || null;
      var user_auth = { mobile: mobilePhone, first_name: firstName, last_name: lastName,
        address_attributes: {district_id: district_id, address_type: "profile"}};

      new AjaxPromise("/auth/signup", "POST", null, {user_auth: user_auth})
        .then(data => {
          this.set('session.otpAuthKey', data.otp_auth_key);
          this.setProperties({mobilePhone:null, firstName:null, lastName:null});
          this.transitionToRoute('/authenticate');
        })
        .catch(xhr => {
          if (xhr.status === 422) {
            this.get("alert").show(xhr.responseJSON.errors);
          } else {
            throw xhr;
          }
        })
        .finally(() => loadingView.destroy());
    }
  }
});

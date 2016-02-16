import Ember from 'ember';
import AjaxPromise from 'goodcity/utils/ajax-promise';

export default Ember.Component.extend({

  creditCardNumber: null,
  cardExpiryDate: null,
  amount: null,

  isChinese: Ember.computed('session.language', function(){
    return this.get('session.language') === 'zh-tw';
  }),

  didInsertElement() {
    var token_url = "/braintree/generate_token";
    var add_customer_url = "/braintree/make_transaction ";
    var authToken = this.get('session.authToken');
    var _this = this;

    new AjaxPromise(token_url, "GET", authToken)
      .then(data => {
        var token = data.braintree_token

        braintree.setup(token, "dropin", {
          container: "braintree-dropin-container",
          form: "braintree-checkout-form",

          onPaymentMethodReceived: function (object) {
            new AjaxPromise(add_customer_url, "POST", authToken, { payment_method_nonce: object.nonce, amount: _this.get("amount") })
              .then(data => {
              });
          }
        });

        // braintree.setup(token, "custom", {
        //   id: "braintree-checkout-form",

        //   onPaymentMethodReceived: function (object) {
        //     new AjaxPromise(add_customer_url, "POST", authToken, { payment_method_nonce: object.nonce, amount: _this.get("amount") })
        //       .then(data => {
        //       });
        //   }
        // });

      });
  }
});

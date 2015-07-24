import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    /**
     * Receives a Stripe token after checkout succeeds
     * The token looks like this https://stripe.com/docs/api#tokens
     */
    processStripeToken: function(token) {
      // Send token to the server to associate with account/user/etc
    }
  }
});

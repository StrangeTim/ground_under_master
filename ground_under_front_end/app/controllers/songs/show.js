import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    /**
     * Receives a Stripe token after checkout succeeds
     * The token looks like this https://stripe.com/docs/api#tokens
     */
    processStripeToken: function(token) {
      var model = this.get('model')
      var charge = this.store.createRecord('charge', {
        amount: model.get('price'),
        token: token.id
      });
      var _this = this
      charge.save().then(function(){
        _this.transitionTo('songs.index')
      });
    }
  }
});

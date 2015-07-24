import Ember from 'ember';
 var computed = Ember.computed
export default Ember.Controller.extend({
  isValid: computed(
    'model.name',
    'model.description',
    'model.bpm',
    'model.key',
    'model.price',
    'model.genre',
    function() {
      return !Ember.isEmpty(this.get('model.name')) &&
      !Ember.isEmpty(this.get('model.description')) &&
      !Ember.isEmpty(this.get('model.bpm')) &&
      !Ember.isEmpty(this.get('model.key')) &&
      !Ember.isEmpty(this.get('model.price')) &&
      !Ember.isEmpty(this.get('model.genre'));
    }
  ),
  actions: {
    save: function() {
      if (this.get('isValid')) {
        var _this = this
        this.get('model').save().then(function(song){
          _this.transitionToRoute('songs.show', song);
        });
      } else {
        this.set('errorMessage', 'you have to fill out all fields')
      }
      return false
    }
  }
});

import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  genre: DS.attr('string'),
  key: DS.attr('string'),
  bpm: DS.attr('string'),
  description: DS.attr('string'),
  price: DS.attr('number'),
  libraries: DS.hasMany('library'),
  chargePrice: Ember.computed('price',function() {
    return this.get('price') * 100 })

});

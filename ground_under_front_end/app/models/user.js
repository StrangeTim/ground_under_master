import DS from 'ember-data';


export default DS.Model.extend({
  email: DS.attr('string'),
  name: DS.attr('string'),
  password: DS.attr('string'),
  artist_name: DS.attr('string'),
  artist: DS.attr('boolean'),
  money: DS.attr('string'),
  description: DS.attr('string'),

  libraries: DS.hasMany('library')

});


export default;

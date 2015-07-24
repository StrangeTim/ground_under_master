import DS from 'ember-data';

export default DS.Model.extend({
  userId: DS.attr('integer'),
  songId: DS.attr('integer'),
  purchased: DS.attr('boolean'),

  user: DS.belongsTo('user'),
  song: DS.belongsTo('song')


});

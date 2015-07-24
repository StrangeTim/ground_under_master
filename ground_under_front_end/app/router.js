import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('home', {path: '/'});
  this.route('users');
  this.route('songs', function() {
    this.route('show', {path: ':song_id'});
    this.route('new');
  });
  this.route('libraries');
  this.route('charges', function() {
    this.route('new');
  });
  this.route('login');
});

export default Router;

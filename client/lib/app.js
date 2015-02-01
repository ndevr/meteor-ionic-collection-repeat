angular.module('myApp', ['angular-meteor', 'ionic']);

Meteor.startup(function () {
  angular.bootstrap(document, ['myApp']);
});
(function() {
  'use strict';

  angular
    .module('cipherApp')
    .config(['$stateProvider', '$urlRouterProvider',
     function($stateProvider, $urlRouterProvider) {
     $stateProvider
      .state('home', {
      url: '/',
      templateUrl: 'login/login.html',
      controller: 'LoginController as vm'
      })

      $urlRouterProvider.otherwise('/');
     }])
}());
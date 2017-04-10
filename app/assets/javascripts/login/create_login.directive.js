(function() {
  'use strict';

  function CreateLogin() {
    return {
      templateUrl: 'login/login.html',
      restrict: 'E'
    };
  }

  angular
    .module('cipherApp')
    .directive('createLogin', CreateLogin);

}());
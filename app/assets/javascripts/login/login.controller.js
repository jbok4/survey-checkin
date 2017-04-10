(function() {
  'use strict';

  function LoginController(LoginFactory, $stateParams) {
    
    var vm = this;
    vm.createUser = createUser;
    vm.addUser = addUser;

    activate();


    // defined methods
    function activate() {
    
    }

function createUser() {
      return LoginFactory.createUser(vm.user, vm.user.id)
                        .then(addUser)
    }

    function addUser(data) {
      vm.user.users.push(data);
      getUsers();
      vm.user = {};
      return vm.users.push(data);
    }

  };

  angular
  .module('cipherApp')
  .controller('LoginController', LoginController);
}());
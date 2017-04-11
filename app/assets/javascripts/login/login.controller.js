(function() {
  'use strict';

  function LoginController(LoginFactory, $stateParams) {
    
    var vm = this;
    vm.createUser = createUser;
    vm.addUser = addUser;

    activate();


    // defined methods
    function activate() {
      getUsers();
    }

    function getUsers() {
      return LoginFactory.getUsers()
              .then(setUsers)
    }

    function setUsers(data) {
      vm.users = data;
    }

    function createUser() {
      console.log('hello')
        return LoginFactory.createUser(vm.user)
                          .then(addUser)
    }

    function addUser(data) {
      console.log(data)
      vm.users.push(data);
      getUsers();
      vm.user = {};
      return vm.users.push(data);
    }

  };

  angular
  .module('cipherApp')
  .controller('LoginController', LoginController);
}());
(function() {

  'use strict';

  function LoginFactory($http) {
      return {
        getUsers: getUsers,
        createUser: createUser,

      }

      function getUsers() {
        return $http.get('/api/users')
                    .then(handleResponse)
                    .catch(handleError);
      }

      function createUser(user) {
          var req = {
            method: 'POST',
            url: '/api/users',
            headers: {
              'Content-Type': 'application/json'
            },
            data: {
              user: user
            }
          };
          return $http(req)
                .then(handleResponse)
                .catch(handleError)
      }

      function handleResponse(response) {
          return response.data
      }

      function handleError(error) {
          console.log(error)
      }
  }


  angular
    .module('cipherApp')
    .factory('LoginFactory', LoginFactory);

}());
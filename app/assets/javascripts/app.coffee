email = angular.module('email', [
  'templates',
  'ngRoute',
  'controllers'
])

email.config([ '$routeProvider',
  ($routeProvider) ->
    $routeProvider
      .when('/',
        templateUrl: 'index.html',
        controller: 'EmailsController'
      )
])

controllers = angular.module('controllers', [])
controllers.controller('EmailsController', ['$scope,
  ($scope) ->
'])

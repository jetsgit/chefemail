email = angular.module('email', [
  'templates',
  'ngRoute',
  'controllers',
  'infinite-scroll',
  'ngStorage',
  'emailFilter'
])

email.config([ '$routeProvider','$locationProvider',
  ($routeProvider, $locationProvider) ->
    $locationProvider.html5Mode(true)
    $routeProvider
      .when('/',
        templateUrl: 'index.html',
        controller: 'InfiniteScrollController'
      )
])

controllers = angular.module('controllers', [])

emailApp = angular.module('emailApp', [
  'templates',
  'ngRoute',
  'controllers',
  'infinite-scroll',
  'ngStorage',
  'emailFilter',
  'ngResource'
])

emailApp.config([ '$routeProvider','$locationProvider',
  ($routeProvider, $locationProvider) ->
    $locationProvider.html5Mode(true)
    $routeProvider
      .when('/',
        templateUrl: "index.html",
        controller: 'InfiniteScrollController'
      )
])

# controllers = angular.module('controllers', [])

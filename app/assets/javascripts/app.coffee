email = angular.module('email', [
  'templates',
  'ngRoute',
  'controllers',
  'infinite-scroll'
])

email.config([ '$routeProvider',
  ($routeProvider) ->
    $routeProvider
      .when('/',
        templateUrl: 'index.html',
        controller: 'InfiniteScrollController'
      )
])

controllers = angular.module('controllers', [])

controllers.controller('InfiniteScrollController', ['$scope', '$http',
  ($scope, $http) ->
    $scope.emails = gon.emails
    $scope.data = $scope.emails.slice 0, 100
    $scope.getMoreEmails = ->
        $scope.data = $scope.emails.slice 0, $scope.data.length + 20
])

email.filter('unique', ->
  return (data) ->
    checked = {}
    result = []
    angular.forEach(data, (val, key) ->
      if ( checked[val] == undefined)
        checked[val] = val
        result.push   val
    )
    return result 
)

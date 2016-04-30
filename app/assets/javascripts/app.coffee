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
controllers.controller('EmailsController', ['$scope',
  ($scope) ->
    $scope.items = ["jack", "harry", "james", "mary", "betty", "shelly", "patricia"]
])

$scope.items = { '1': "jack", '2': "mary", '3': "harry", '4': "james", '5': "mary", '6': "betty", '7': "shelly", '8': "patricia", '9': "jack" }
email.filter('unique', ->
  return (items) ->
    checked = {}
    result = []
    angular.forEach(items, (val, key) ->
      if ( checked[val] == undefined)
        checked[val] = val
        result.push   val
    )
    return result
)

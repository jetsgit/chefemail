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
    $scope.items = ["patricia", "jack", "mary", "oliver", "harry", "james", "mary", "betty", "shelly", "patricia", "jack"]
])

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

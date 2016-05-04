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


controllers.controller('InfiniteScrollController', ['$scope', '$http', '$localStorage', '$document',
  ($scope, $http, $localStorage, $document) ->
    $scope.checked = {}
    tmpEmail = gon.emails
    $scope.emails = angular.fromJson tmpEmail
    $scope.data = $scope.emails.slice 0, 98
    $scope.getMoreEmails = ->
      $scope.data = $scope.emails.slice 0, $scope.data.length + 60
    
    $document.ready () ->
      $http.get 'api/emails'
      .then(
        (response) ->
          dataTmp = response.data
          dataTmp =  angular.fromJson dataTmp
          $scope.statuscode = response.status
          $scope.statustext = response.statustext
          # $localStorage.$reset
          $localStorage.emails = angular.extend dataTmp, $localStorage.emails 
          $scope.emails = $localStorage.emails
        (response) ->
          $scope.content = "There was an error in connecting to the Server!"
      )
])

angular.module('emailFilter', []).filter('dupe', ->
  return (data, checked) ->
    checked = {}
    result = []
    angular.forEach(data, (val, key) ->
      if ( checked[val.email] == undefined)
        checked[val.email] = val.id
        result.push val.email
    )
    data = result
    return data

)

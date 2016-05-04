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
    tmpEmail = gon.emails
    $scope.emails = angular.fromJson tmpEmail
    $scope.data = $scope.emails.slice 0, 98
    $scope.getMoreEmails = ->
      if ($scope.data.length + 60) > $scope.emails.length
        $scope.emails = angular.merge $scope.emails, $localStorage.emails
        $scope.data = $scope.emails.slice 0, $scope.data.length + 60
      else
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
          $localStorage.emails = dataTmp
        (response) ->
          $scope.content = "There was an error in connecting to the Server!"
      )
])

angular.module('emailFilter', []).filter('dupe', ->
  return (data) ->
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

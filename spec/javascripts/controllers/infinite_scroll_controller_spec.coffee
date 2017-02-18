#=require spec_helper
describe 'email', ->
  beforeEach(module('emailApp'))
  $controller
  beforeEach(inject( (_$controller_) ->
    $controlller = _$controller_
  ))
  describe 'test', ->
    controller = $controller 'InfiniteScrollController', {$scope: $scope}

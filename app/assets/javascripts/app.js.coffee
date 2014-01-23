angular.module('oay.app', []).
  directive('country', ->
    restrict: 'E'
    replace: true
    transclude: true
    scope: {}
    template:
      '<g ng-class="{visited: visited, unvisited: !visited}" ng-click="toggleSelection()" ng-transclude=""></g>'
    templateNS: 'http://www.w3.org/2000/svg'
    controller: 'CountryCtrl'
  ).
  controller('CountryCtrl', ($scope) ->
    $scope.visited = false
    $scope.toggleSelection = ->
      $scope.visited = !$scope.visited
  ).
  directive('landmass', ->
    restrict: 'E'
    replace: true
    scope:
      name: '@'
      d: '@'
      style: '@'
    template: '<path></path>'
    templateNS: 'http://www.w3.org/2000/svg'
  )

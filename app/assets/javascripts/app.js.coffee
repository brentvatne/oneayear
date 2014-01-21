angular.module('oay.app', []).
  directive('country', ($timeout) ->
    restrict: 'E'
    replace: true
    scope:
      name: '@'
      d: '@'
      style: '@'
    template: '<path d="{{d}}" ng-click="sayHello()"></path>'
    templateNS: 'http://www.w3.org/2000/svg'
    controller: 'CountryCtrl'
  ).controller('CountryCtrl', ($scope) ->
    $scope.sayHello = -> alert("hi " + $scope.name)
  )

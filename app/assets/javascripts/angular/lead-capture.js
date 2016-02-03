(function(){
    var app = angular.module('myApp', []);
    app.controller('FormController', ['$scope', function($scope){
        $scope.step = 1;
 
        $scope.nextStep = function() {
            $scope.step++;
        }
 
        $scope.prevStep = function() {
            $scope.step--;
        }
 
        $scope.submitForm = function() {
            // submit code goes here
        }
    }]);
})();
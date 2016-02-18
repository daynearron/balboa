// // Declare app level module which depends on filters, and services
// var app = angular.module('myApp', []);

// function RegisterCtrl($scope, $location) {

//   $scope.steps = [
//     'Step 1: Team Info',
//     'Step 2: Campaign Info',
//     'Step 3: Campaign Media'
//   ];
//   $scope.selection = $scope.steps[0];

//   $scope.getCurrentStepIndex = function(){
//     // Get the index of the current step given selection
//     return _.indexOf($scope.steps, $scope.selection);
//   };

//   // Go to a defined step index
//   $scope.goToStep = function(index) {
//     if ( !_.isUndefined($scope.steps[index]) )
//     {
//       $scope.selection = $scope.steps[index];
//     }
//   };

//   $scope.hasNextStep = function(){
//     var stepIndex = $scope.getCurrentStepIndex();
//     var nextStep = stepIndex + 1;
//     // Return true if there is a next step, false if not
//     return !_.isUndefined($scope.steps[nextStep]);
//   };

//   $scope.hasPreviousStep = function(){
//     var stepIndex = $scope.getCurrentStepIndex();
//     var previousStep = stepIndex - 1;
//     // Return true if there is a next step, false if not
//     return !_.isUndefined($scope.steps[previousStep]);
//   };

//   $scope.incrementStep = function() {
//     if ( $scope.hasNextStep() )
//     {
//       var stepIndex = $scope.getCurrentStepIndex();
//       var nextStep = stepIndex + 1;
//       $scope.selection = $scope.steps[nextStep];
//     }
//   };

//   $scope.decrementStep = function() {
//     if ( $scope.hasPreviousStep() )
//     {
//       var stepIndex = $scope.getCurrentStepIndex();
//       var previousStep = stepIndex - 1;
//       $scope.selection = $scope.steps[previousStep];
//     }
//   };
// }
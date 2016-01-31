'use strict';

angular.module('balboa.directives', []);
var baloaApp = angular.module('balboa', ['balboa.directives'])
  .config(['$httpProvider', function($httpProvider) {
     $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
}]);
  
'use strict';

angular.module('balboa.controllers', []);
angular.module('balboa.directives', []);
var balboaApp = angular.module('balboa', ['balboa.directives', 'balboa.controllers'])
  .config(['$httpProvider', function($httpProvider) {
     $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
}]);
  
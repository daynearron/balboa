angular.module('balboa.directives').directive('boolean', function() {
  return {
    priority: '50',
    require: 'ngModel',
    link: function(_, __, ___, ngModel) {
      ngModel.$parsers.push(function(value) {
        return value == 'true' || value == true;
      });

      ngModel.$formatters.push(function(value) {
        return value && value != 'false' ? 'true' : 'false';
      });
    }
  };
});

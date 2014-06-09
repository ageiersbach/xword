// word_games module
angular
  .module('myTinyApp', ['ngRoute', 'ngResource'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
      controller: 'MainCtrl'
    }).when('/:word', {
      controller: 'WordCtrl',
    }).otherwise({
      redirectTo: '/'
    });
  }]);


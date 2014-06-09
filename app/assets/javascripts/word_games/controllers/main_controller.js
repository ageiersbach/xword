angular
  .module('myTinyApp')
  .controller('MainCtrl', ['Word', '$scope', '$routeParams', function(Word, $scope, $routeParams) {
    $scope.words = Word.query();
  }]);

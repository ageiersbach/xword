angular
  .module('myTinyApp')
  .controller('MainCtrl', ['Word', 'Clue', '$scope', '$routeParams', function(Word, Clue, $scope, $routeParams) {
    $scope.words = Word.query();
    $scope.newWord = new Word();

    $scope.addWord = function(word) {
      console.log("Adding word?" + word.name);
      $scope.words.push(word);
      word.$save();
      $scope.newWord = new Word();
    };

  }]);

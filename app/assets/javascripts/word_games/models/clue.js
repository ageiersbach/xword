angular
  .module('myTinyApp')
  .factory('Clue', function($resource) {
    
    var Clue = $resource('/api/clues/:id.json', { id: '@id' }, {
      update: { 
        method: 'PUT'
      }
    });
  
    return Clue;
  });

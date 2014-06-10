angular
  .module('myTinyApp')
  .factory('Word', function($resource) {
    
    var Word = $resource('/api/words/:id.json', { id: '@id' }, {
      update: { 
        method: 'PUT'
      }
    });
  
    return Word;
  });

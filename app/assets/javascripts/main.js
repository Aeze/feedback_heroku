feedbackApp = angular.module('feedbackApp', []);

feedbackApp.filter('fuzzyFilter', function () {
  return function (items, searchText) {
    var searchWords;
    
    if (searchText) {
      searchWords = searchText.split(' ');
      return _.filter(items, function (item) {
        var itemText = _.values(item).join(' ').toLowerCase();
        return _.every(searchWords, function (searchWord) {
          return itemText.search(searchWord.toLowerCase()) !== -1;
        });
      });
    } else {
      return items;
    }
  };
});


function IssuesCtrl($scope, $http) {

  $http.get('/issues.json').success(function(data) {
      $scope.issues = data;
    });
}
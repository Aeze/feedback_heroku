angular.module('tabApp', [])
  .controller('TabsCtrl', ['$scope', function ($scope) {
    $scope.tabs = [{
            title: 'Top Bug Reports',
            url: 'bugs.tpl.html'
        }, {
            title: 'Top Feature Requests',
            url: 'features.tpl.html'
        }];

    $scope.currentTab = 'bugs.tpl.html';

    $scope.onClickTab = function (tab) {
        $scope.currentTab = tab.url;
    };
    
    $scope.isActiveTab = function(tabUrl) {
        return tabUrl == $scope.currentTab;
    };
}]);
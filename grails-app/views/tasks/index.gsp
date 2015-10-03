<%--
  Created by IntelliJ IDEA.
  User: hitenpratap
  Date: 3/10/15
  Time: 6:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main" />
</head>

<body>
<div class="container" ng-app="taskApp">
    <toaster-container toaster-options="{'close-button': true}"></toaster-container>
    <ng-view></ng-view>
</div>

<script>
    var taskApp = angular.module('taskApp',['ngRoute','toaster']);

    taskApp.config(['$routeProvider',
        function($routeProvider) {
            $routeProvider.
                    when('/add', {
                        templateUrl: '${createLink(absolute: true, controller: 'task',action: 'create')}',
                        controller: 'AddTaskController'
                    }).
                    when('/list', {
                        templateUrl: '${createLink(absolute: true, controller: 'task',action: 'list')}',
                        controller: 'ListTaskController'
                    }).
                    when('/edit', {
                        templateUrl: '${createLink(absolute: true, controller: 'task',action: 'edit')}',
                        controller: 'EditTaskController'
                    }).
                    otherwise({
                        redirectTo: '/list'
                    });
        }]);

    taskApp.controller('AddTaskController', function($scope,$http,$window,toaster) {

        var appBaseURL = $("#appBaseUrl").val();
        $scope.task = {};
        $scope.submitForm = function(){
            $http({
                method:"POST",
                data:$.param($scope.task),
                url:"${createLink(controller: 'task',action: 'save')}",
                headers : {'Content-Type': 'application/x-www-form-urlencoded'}
            }).success(function(data){
                if(data.result && data.result == 'SUCCESS'){
                    toaster.pop('success', "Yippee!!", data.successMsg);
                    $window.location.href = appBaseURL+'/#/list';
                }else{
                    toaster.pop('error', "Whoops!!", data.errMsg);
                    $window.location.href = appBaseURL+'/#/add';
                }
            });
        };
    });

    taskApp.controller('EditTaskController', function($scope) {
        $scope.message = 'This is Edit existing order screen';
    });

    taskApp.controller('ListTaskController', function($scope,TaskService) {
        TaskService.loadTaskList(function (response) {
            $scope.tasks = response;
        });
    });

    taskApp.service('TaskService',function($http){
        this.loadTaskList = function(callback){
            $http({
                url:"${createLink(controller: 'task',action: 'loadTaskList')}",
                method:"POST"
            }).success(function(data){
                callback(data);
            });
        };
    });

    taskApp.directive('jqdatepicker', function () {
        return {
            restrict: 'A',
            require: 'ngModel',
            link: function ($scope, element, attrs, ngModelCtrl) {
                element.datepicker({
                    dateFormat: 'MM dd, yy',
                    minDate: 0,
                    onSelect: function (date) {
                        $scope.task.taskDate = date;
                        $scope.$apply();
                    }
                });
            }
        };
    });
</script>

</body>
</html>
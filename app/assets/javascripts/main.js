var doctorApp = angular.module('doctorApp', ['ui.router', 'templates']);

doctorApp.config(function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('doctors', {
      url: '/',
      component: 'doctorsIndex'
    })
    .state('doctors.index', {
      url: '/doctors',
      component: 'doctorsIndex'
    });

  $urlRouterProvider.otherwise('/');
});

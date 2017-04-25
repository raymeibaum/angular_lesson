angular
  .module('doctorApp')
  .component('doctorsList', {
  templateUrl: 'doctorsList.template.html',
  controller: DoctorsListController,
  controllerAs: 'doctorListCtrl'
});


function DoctorsListController($scope, $http) {

  $scope.doctors = [
    { name: 'decdfsdf' }
  ];

  console.log('hello');

  function getDoctors() {

  }
}

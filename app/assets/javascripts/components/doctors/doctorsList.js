angular
  .module('doctorApp')
  .component('doctorsList', {
  templateUrl: 'doctors/doctorsList.template.html',
  controller: DoctorsListController,
  controllerAs: 'doctorsListCtrl'
});


function DoctorsListController($scope, $http) {

  var vm = this;

  vm.doctors = [
    { name: 'Dr. Mantis Toboggan' },
    { name: 'Dr. Jan Itor' }
  ];

}

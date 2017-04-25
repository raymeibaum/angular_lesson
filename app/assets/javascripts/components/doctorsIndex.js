angular
  .module('doctorApp')
  .component('doctorsIndex', {
    controller: DoctorsIndexController,
    templateUrl: '/doctors/index.html'
  });

DoctorsIndexController.$inject = [];

function DoctorsIndexController() {
  var vm = this;

  console.log('fdsfsdfs');
  vm.hello = 'Hello';
}



import 'package:get/get.dart';
import 'package:testing/classes/person.dart';

class PersonController extends GetxController {
  Rx<Person?> person = Rx<Person?>(null);

  void setPerson({required Person personInput}) => this.person.value = personInput;
  
}
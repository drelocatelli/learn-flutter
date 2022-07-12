import 'package:get/get.dart';

class DataController extends GetxController {
  var name = "".obs;

  void setName(String name) => this.name.value = name;
  
}
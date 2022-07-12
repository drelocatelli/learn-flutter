import 'package:get/get.dart';

class CounterGetController extends GetxController {
  var count = 0.obs;
  
  void increment() => count++;
  void decrement() => count--;
}
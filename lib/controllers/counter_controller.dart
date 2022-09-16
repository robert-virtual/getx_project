import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}

class CounterController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}

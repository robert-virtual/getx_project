import 'package:flutter/material.dart';
import 'package:getx_project/controllers/counter_controller.dart';
import 'package:getx_project/pages/second.dart';
import 'package:get/get.dart';

class Home extends GetView<CounterController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("count: ${controller.count}")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/second");
              },
              child: const Text("Go to second page"))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

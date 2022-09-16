import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/counter_controller.dart';

class Second extends GetView<CounterController> {
  const Second({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Second"),
          Obx(() => Text("count: ${controller.count}"))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

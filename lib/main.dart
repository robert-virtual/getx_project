import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/counter_controller.dart';
import 'package:getx_project/pages/home.dart';
import 'package:getx_project/pages/second.dart';

void main() {
  runApp(GetMaterialApp(
      initialRoute: "/home",
      getPages: [
        GetPage(
            name: "/home", page: () => const Home(), binding: HomeBinding()),
        GetPage(
            name: "/second",
            page: () => const Second(),
            binding: HomeBinding()),
      ],
      debugShowCheckedModeBanner: false));
}

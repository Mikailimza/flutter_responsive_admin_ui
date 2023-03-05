// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard_ui/aplication/router.dart';
import 'package:responsive_dashboard_ui/controller/drawer_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final DrwrController _controller = Get.put(DrwrController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: getPages.page,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
          //primarySwatch: Colors.blue,
          ),
    );
  }
}

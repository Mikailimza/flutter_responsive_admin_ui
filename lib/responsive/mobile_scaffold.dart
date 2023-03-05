// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard_ui/constants.dart';
import 'package:responsive_dashboard_ui/controller/drawer_controller.dart';
import 'package:responsive_dashboard_ui/src/mobil_home.dart';

class MobileScffold extends StatefulWidget {
  const MobileScffold({Key? key}) : super(key: key);

  @override
  State<MobileScffold> createState() => _MobileScffoldState();
}

class _MobileScffoldState extends State<MobileScffold> {
  final DrwrController _drwrController = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrwrController>(builder: (getDwr) {
      return Scaffold(
        appBar: myAppbar(getDwr.title),
        drawer: myDrawer(),
        body: getDwr.mobil == 1 ? const MobilHome() : getDwr.widget,
      );
    });
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard_ui/constants.dart';
import 'package:responsive_dashboard_ui/controller/drawer_controller.dart';

class TabletScafold extends StatefulWidget {
  const TabletScafold({Key? key}) : super(key: key);

  @override
  State<TabletScafold> createState() => _TabletScafoldState();
}

class _TabletScafoldState extends State<TabletScafold> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrwrController>(builder: (getDwr) {
      return Scaffold(
        appBar: myAppbar(getDwr.title),
        drawer: myDrawer(),
        body: getDwr.widget,
      );
    });
  }
}

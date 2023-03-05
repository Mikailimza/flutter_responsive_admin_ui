import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard_ui/constants.dart';
import 'package:responsive_dashboard_ui/controller/drawer_controller.dart';

class DeskopScafold extends StatefulWidget {
  const DeskopScafold({Key? key}) : super(key: key);

  @override
  State<DeskopScafold> createState() => _DeskopScafoldState();
}

class _DeskopScafoldState extends State<DeskopScafold> {
  final DrwrController _drwrController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrwrController>(
      init: _drwrController,
      builder: (draverPages) {
        return Scaffold(
          appBar: myAppbar(draverPages.title),
          body: Row(
            children: [
              myDrawer(),
              Expanded(flex: 3, child: draverPages.widget),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.pink,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Colors.green,
                          child: const Text(
                              "Deneme Bir Container Deneme Bir Container Deneme Bir Container Deneme Bir Container"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

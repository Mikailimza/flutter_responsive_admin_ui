import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard_ui/controller/drawer_controller.dart';

var myDefaultBackground = Colors.grey[300];

PreferredSizeWidget myAppbar(String title) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.grey[900],
  );
}

Widget myDrawer() {
  return Drawer(
    width: 250,
    backgroundColor: Colors.grey[900],
    child: Column(
      children: [
        const DrawerHeader(child: Icon(Icons.favorite)),
        GetBuilder<DrwrController>(
          builder: (controller) {
            return Expanded(
              child: ListView.builder(
                itemCount: controller.drawerList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      controller.drawerList[index].iconData,
                      color: controller.widget ==
                              controller.drawerList[index].pages
                          ? Colors.green
                          : null,
                    ),
                    title: Text(controller.drawerList[index].pagesName),
                    onTap: () {
                      controller.getWidget(index);
                      controller.getTitle(index);
                      controller.getMobil(index);
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    ),
  );
}

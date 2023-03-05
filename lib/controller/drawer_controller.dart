// ignore_for_file: unnecessary_this, unnecessary_overrides, prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard_ui/models/drawer_model.dart';
import 'package:responsive_dashboard_ui/src/home_content.dart';
import 'package:responsive_dashboard_ui/src/logout_pages.dart';
import 'package:responsive_dashboard_ui/src/message_pages.dart';
import 'package:responsive_dashboard_ui/src/settings_pages.dart';

class DrwrController extends GetxController {
  List<DrawerModel> _drawerList = <DrawerModel>[].obs;
  List<DrawerModel> get drawerList => this._drawerList;
  set drawerList(List<DrawerModel> value) => this._drawerList = value;

  late Widget widget;

  late String title;

  late Color color;

  int mobil = 1;

  @override
  void onInit() {
    getDrawer();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getWidget(int index) {
    widget = drawerList[index].pages;
    update();
  }

  getMobil(int index) {
    mobil = drawerList[index].id;
    update();
  }

  getTitle(int index) {
    title = drawerList[index].pagesName;
    update();
  }

  Future<List<DrawerModel>> getDrawer() async {
    drawerList = <DrawerModel>[
      DrawerModel(1, Icons.home, "D A S H B O A R D", const HomePages()),
      DrawerModel(2, Icons.chat, "M E S S A G E", const MessagePages()),
      DrawerModel(3, Icons.settings, "S E T T I N G S", const SettingsPages()),
      DrawerModel(4, Icons.logout, "L O G O U T", const LogoutPages()),
    ];
    widget = drawerList[0].pages;
    title = drawerList[0].pagesName;

    update();
    return drawerList;
  }
}

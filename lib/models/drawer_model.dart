import 'package:flutter/material.dart';

class DrawerModel {
  int id;
  IconData iconData;
  String pagesName;
  Widget pages;

  DrawerModel(this.id, this.iconData, this.pagesName, this.pages);
}

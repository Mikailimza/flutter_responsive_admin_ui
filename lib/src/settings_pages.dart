// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SettingsPages extends StatefulWidget {
  const SettingsPages({Key? key}) : super(key: key);

  @override
  State<SettingsPages> createState() => _SettingsPagesState();
}

class _SettingsPagesState extends State<SettingsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child:const Center(
          child: Text("Settings"),
        ),
      ),
    );
  }
}

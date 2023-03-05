// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LogoutPages extends StatefulWidget {
  const LogoutPages({Key? key}) : super(key: key);

  @override
  State<LogoutPages> createState() => _LogoutPagesState();
}

class _LogoutPagesState extends State<LogoutPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text("Logout Pages"),
        ),
      ),
    );
  }
}

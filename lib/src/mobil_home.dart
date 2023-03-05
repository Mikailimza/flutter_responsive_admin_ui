import 'package:flutter/material.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class MobilHome extends StatefulWidget {
  const MobilHome({Key? key}) : super(key: key);

  @override
  State<MobilHome> createState() => _MobilHomeState();
}

class _MobilHomeState extends State<MobilHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const MyBox();
              },
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const MyTile();
            },
          ),
        ),
      ],
    );
  }
}

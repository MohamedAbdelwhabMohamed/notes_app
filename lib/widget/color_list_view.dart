import 'package:flutter/material.dart';

class ColorItim extends StatelessWidget {
  const ColorItim({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 38,
      backgroundColor: Colors.green,
    );
  }
}

class ColorItimList extends StatelessWidget {
  const ColorItimList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return ColorItim();
          }),
    );
  }
}

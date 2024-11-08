import 'package:flutter/material.dart';

class ColorItim extends StatelessWidget {
  const ColorItim({super.key, required this.inActive, required this.color});
  final bool inActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return inActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorItimList extends StatefulWidget {
  const ColorItimList({super.key});

  @override
  State<ColorItimList> createState() => _ColorItimListState();
}

class _ColorItimListState extends State<ColorItimList> {
  int currentIndex = 0;
  List<Color> colorList = [
    Color(0xFF470063),
    Color(0xFF8e5572),
    Color(0xFF335c67),
    Color(0xFF540b0e),
    Color(0xFF443850),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38 * 2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: ColorItim(
                      color: colorList[index],
                      inActive: currentIndex == index)),
            );
          },
        ));
  }
}

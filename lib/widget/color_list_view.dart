import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:opp/helper/costoms.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38 * 2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolorList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color =
                        kcolorList[index];
                    setState(() {});
                  },
                  child: ColorItim(
                      color: kcolorList[index],
                      inActive: currentIndex == index)),
            );
          },
        ));
  }
}

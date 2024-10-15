import 'package:flutter/material.dart';
import 'package:opp/helper/costom_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.mixLines = 1});

  final String hint;
  final int mixLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLines: mixLines,
        cursorColor: KprimaryColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xff62FCD7)),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(KprimaryColor),
        ));
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}

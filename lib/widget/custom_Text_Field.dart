import 'package:flutter/material.dart';
import 'package:opp/helper/costom_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: KprimaryColor,
        decoration: InputDecoration(
          hintText: 'Title',
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

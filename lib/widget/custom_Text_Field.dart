// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:opp/helper/costoms.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.mixLines = 1, this.onSaved});

  final String hint;
  final int mixLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        maxLines: mixLines,
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: kprimaryColor,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(
            kprimaryColor,
          ),
        ));
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}

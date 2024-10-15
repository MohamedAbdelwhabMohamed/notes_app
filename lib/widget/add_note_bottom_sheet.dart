import 'package:flutter/material.dart';
import 'package:opp/widget/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 22,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(),
        ),
      ],
    );
  }
}

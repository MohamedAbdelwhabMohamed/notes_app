import 'package:flutter/material.dart';
import 'package:opp/widget/custom_bottom.dart';
import 'package:opp/widget/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'content', mixLines: 5),
            SizedBox(height: 22),
            CustomBotom(),
            SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}

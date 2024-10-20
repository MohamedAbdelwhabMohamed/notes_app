import 'package:flutter/material.dart';
import 'package:opp/widget/custom_Text_Field.dart';
import 'package:opp/widget/custom_appBar.dart';

class EditNoteViewBady extends StatelessWidget {
  const EditNoteViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppbar(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'content', mixLines: 5),
          ],
        ),
      ),
    );
  }
}

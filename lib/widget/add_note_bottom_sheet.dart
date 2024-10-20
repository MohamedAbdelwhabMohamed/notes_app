import 'package:flutter/material.dart';
import 'package:opp/widget/costom_bottom.dart';
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
            CostomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CostomTextField(hint: 'content', mixLines: 5),
            SizedBox(height: 22),
            CostomBotom(),
            SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}

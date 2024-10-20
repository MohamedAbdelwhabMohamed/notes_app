import 'package:flutter/material.dart';
import 'package:opp/widget/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: EditNoteViewBady(),
    ));
  }
}
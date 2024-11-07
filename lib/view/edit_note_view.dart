import 'package:flutter/material.dart';
import 'package:opp/model/note_model.dart';
import 'package:opp/widget/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: EditNoteViewBady(note: note),
    ));
  }
}

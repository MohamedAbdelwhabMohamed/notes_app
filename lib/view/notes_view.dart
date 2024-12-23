import 'package:flutter/material.dart';

import 'package:opp/widget/add_note_bottom_sheet.dart';
import 'package:opp/widget/notes_view_bady.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: NotesViewBady(),
      ),
    );
  }
}

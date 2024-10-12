import 'package:flutter/material.dart';
import 'package:opp/widget/costom_note_item.dart';

class NotesListViewe extends StatelessWidget {
  const NotesListViewe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const NotesItemBady(),
        );
      },
    );
  }
}

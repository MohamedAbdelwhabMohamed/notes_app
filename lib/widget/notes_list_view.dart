import 'package:flutter/material.dart';
import 'package:opp/widget/costom_note_item(1).dart';

class NotesListViewe extends StatelessWidget {
  const NotesListViewe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: NotesItem(),
            );
          },
        ),
      ),
    );
  }
}

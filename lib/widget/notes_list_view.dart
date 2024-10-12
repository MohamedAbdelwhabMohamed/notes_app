import 'package:flutter/material.dart';
import 'package:opp/widget/notes_view.dart';

class NotesListViewe extends StatelessWidget {
  const NotesListViewe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: NotesView(),
          );
        },
      ),
    );
  }
}

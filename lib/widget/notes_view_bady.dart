import 'package:flutter/material.dart';
import 'package:opp/widget/custom_appBar.dart';
import 'package:opp/widget/notes_list_view.dart';

class NotesViewBady extends StatelessWidget {
  const NotesViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomAppbar(
          icon: Icons.search,
          title: 'Notes',
        ),
        Expanded(child: NotesListView()),
      ],
    ));
  }
}

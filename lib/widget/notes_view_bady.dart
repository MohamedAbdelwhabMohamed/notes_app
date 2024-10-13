import 'package:flutter/material.dart';
import 'package:opp/widget/custom_appBar.dart';
import 'package:opp/widget/notes_list_view.dart';

class NotesViewBady extends StatelessWidget {
  const NotesViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0), // or any other size you want
          child: CustomAppbar(),
        ),
        body: Column(
          children: [
            Expanded(child: NotesListViewe()),
          ],
        ));
  }
}

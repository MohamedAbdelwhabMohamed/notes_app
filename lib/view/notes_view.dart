import 'package:flutter/material.dart';
import 'package:opp/widget/notes_view_bady.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBady(),
    );
  }
}

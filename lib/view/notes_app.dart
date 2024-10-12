import 'package:flutter/material.dart';
import 'package:opp/widget/custom_appBar.dart';
import 'package:opp/widget/costom_note_item.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0), // or any other size you want
          child: CustomAppbar(),
        ),
        body: NotesItemBady());
  }
}

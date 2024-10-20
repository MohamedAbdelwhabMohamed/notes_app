import 'package:flutter/material.dart';
import 'package:opp/widget/custom_appBar.dart';

class EditNoteViewBady extends StatelessWidget {
  const EditNoteViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0), // or any other size you want
        child: CostomAppbar(
          icon: Icons.check,
          title: 'Edit Note',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

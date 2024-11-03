import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opp/cubits/netes_cubit/notes_cubit.dart';
import 'package:opp/widget/custom_appBar.dart';
import 'package:opp/widget/notes_list_view.dart';

class NotesViewBady extends StatefulWidget {
  const NotesViewBady({super.key});

  @override
  State<NotesViewBady> createState() => _NotesViewBadyState();
}

class _NotesViewBadyState extends State<NotesViewBady> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

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

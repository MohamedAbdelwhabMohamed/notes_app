import 'package:flutter/material.dart';
import 'package:opp/cubits/netes_cubit/notes_cubit.dart';
import 'package:opp/widget/add_note_from.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opp/cubits/add_note_cubit/add_note_cubit.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child:
          BlocConsumer<AddNoteCubit, AddNoteState>(listener: (context, state) {
        if (state is AddNoteSuccess) {
          BlocProvider.of<NotesCubit>(context).fetchNotes();

          Navigator.pop(context);
        }
        if (state is AddNoteFailure) {}
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: AddNoteForm())),
        );
      }),
    );
  }
}

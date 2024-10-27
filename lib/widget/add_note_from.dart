import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:opp/model/note_model.dart';
import 'package:opp/widget/custom_Text_Field.dart';
import 'package:opp/widget/custom_bottom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //التحقق من صحة البيانات المدخلة في النموذج باستخدام AutovalidateMode disabled والتحقق من صحة البيانات المدخلة في النموذج باستخدام AutovalidateMode.onUserInteraction
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 22,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            mixLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(
            height: 22,
          ),
          CustomBotom(onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              var noteModel = NoteModel(
                  title: title!,
                  cotent: content!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
            } else {
              autoValidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }),
          SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}

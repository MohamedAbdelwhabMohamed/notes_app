import 'package:flutter/material.dart';
import 'package:opp/widget/custom_bottom.dart';
import 'package:opp/widget/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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

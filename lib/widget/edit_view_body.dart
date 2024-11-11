import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opp/cubits/netes_cubit/notes_cubit.dart';
import 'package:opp/helper/costoms.dart';
import 'package:opp/model/note_model.dart';
import 'package:opp/widget/color_list_view.dart';
import 'package:opp/widget/custom_Text_Field.dart';
import 'package:opp/widget/custom_appBar.dart';

class EditNoteViewBady extends StatefulWidget {
  const EditNoteViewBady({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBady> createState() => _EditNoteViewBadyState();
}

class _EditNoteViewBadyState extends State<EditNoteViewBady> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppbar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.content = content ?? widget.note.content;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                  Navigator.pop(context);
                },
                title: 'Edit Note',
                icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title,
            ),
            SizedBox(height: 16),
            CustomTextField(
                onChanged: (value) {
                  content = value;
                },
                hint: widget.note.content,
                mixLines: 5),
            SizedBox(height: 32),
            EditColorList(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}

class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kcolorList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38 * 2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolorList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    widget.note.color = kcolorList[index].value;

                    setState(() {});
                  },
                  child: ColorItim(
                      color: kcolorList[index],
                      inActive: currentIndex == index)),
            );
          },
        ));
  }
}

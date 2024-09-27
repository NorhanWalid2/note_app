import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/custom_appbar.dart';
import 'package:notes_app/pages/widgets/custom_button.dart';
import 'package:notes_app/pages/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              ontab: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).FetchAllNotes();
                Navigator.pop(context);
              },
              text: 'Edit Note',
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
                onchange: (value) {
                  title = value;
                },
                hint: 'title',
                labeltextt: 'title',
                obscure: false),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              onchange: (value) {
                content = value;
              },
              hint: 'content',
              labeltextt: 'content',
              obscure: false,
              maxLine: 5,
            ),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}

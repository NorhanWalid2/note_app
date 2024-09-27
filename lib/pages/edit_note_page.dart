import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        note: note,
      ),
    );
  }
}

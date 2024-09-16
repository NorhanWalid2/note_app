import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(),
    );
  }
}

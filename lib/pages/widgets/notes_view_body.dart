import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custom_appbar.dart';
import 'package:notes_app/pages/widgets/note_card.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppBar(),
          NoteCard(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
//import 'package:notes_app/pages/widgets/notes_view_body';
import 'package:notes_app/pages/widgets/notes_view_body.dart';
//import 'package:notes_app/widgets/notes_view_body';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
    );
  }
}

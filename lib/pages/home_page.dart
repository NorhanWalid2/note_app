import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/pages/widgets/add_note.dart';
//import 'package:notes_app/pages/widgets/notes_view_body';
import 'package:notes_app/pages/widgets/notes_view_body.dart';
//import 'package:notes_app/widgets/notes_view_body';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return AddNoteButtomSheet();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
                bottom: Radius.circular(20),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
      body: NotesViewBody(),
    );
  }
}

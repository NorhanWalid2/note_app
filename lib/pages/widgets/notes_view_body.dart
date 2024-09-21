import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/pages/widgets/custom_appbar.dart';

import 'package:notes_app/pages/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NotesCubit>(context).FetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Notes      ',
            icon: Icon(Icons.search),
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}

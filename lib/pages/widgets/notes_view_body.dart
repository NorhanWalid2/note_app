import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custom_appbar.dart';

import 'package:notes_app/pages/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

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

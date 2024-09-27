import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/color_list_view.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorListView> createState() => _EditNoteListViewState();
}

class _EditNoteListViewState extends State<EditNoteColorListView> {
  late int currindex;
  @override
  void initState() {
    currindex = kcolors.indexOf(Color(widget.note.color));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currindex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ColorItem(
                  color: kcolors[index],
                  isactive: currindex == index,
                ),
              ),
            );
          }),
    );
  }
}

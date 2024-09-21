import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';

import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

//   addNote(NoteModel note) {
//     emit(NotesLoading());
//     try {
//       var noteBox = Hive.box(kNotesBox);
//       noteBox.add(note);
//       emit(NotesSuccessful());
//     } catch (e) {
//       emit(NotesFailer(e.toString()));
//     }
//   }
}

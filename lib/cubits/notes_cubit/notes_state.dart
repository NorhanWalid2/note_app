import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccessful extends NotesState {
  final List<NoteModel> notes;

  NotesSuccessful(this.notes);
}

class NotesFailer extends NotesState {
  final String errorMessage;
  NotesFailer(this.errorMessage);
}

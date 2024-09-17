abstract class AddNoteState {}

class AddNotesInitial extends AddNoteState {}

class AddNotesLoading extends AddNoteState {}

class AddNotesSuccessful extends AddNoteState {}

class AddNotesFailer extends AddNoteState {
  final String errorMessage;
  AddNotesFailer(this.errorMessage);
}

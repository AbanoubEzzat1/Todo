import 'package:abanoub_flutter_task/domain/models.dart';

abstract class NotesStates {}

class NotesInitialState extends NotesStates {}

class ShowSearchFiledState extends NotesStates {}

class GetAllNotesLoadingState extends NotesStates {}

class GetAllNotesSuccessState extends NotesStates {
  final NoteModel _noteModel;
  GetAllNotesSuccessState(this._noteModel);
}

class GetAllNotesErrorState extends NotesStates {
  final String _mesg;
  GetAllNotesErrorState(this._mesg);
}

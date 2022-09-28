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

//--users states
class GetAllUsersLoadingState extends NotesStates {}

class GetAllUsersSuccessState extends NotesStates {
  final UserModel _userModel;
  GetAllUsersSuccessState(this._userModel);
}

class GetAllUsersErrorState extends NotesStates {
  final String _mesg;
  GetAllUsersErrorState(this._mesg);
}

//--Intersts states
class GetInterstsLoadingState extends NotesStates {}

class GetInterstsSuccessState extends NotesStates {
  final InterstesModels _interstesModels;
  GetInterstsSuccessState(this._interstesModels);
}

class GetInterstsErrorState extends NotesStates {
  final String _mesg;
  GetInterstsErrorState(this._mesg);
}

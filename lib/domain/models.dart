//-- Get Note Model
import 'package:flutter/services.dart';

class NoteDataModel {
  String text;
  String placeDateTime;
  String userId;
  String id;
  NoteDataModel(this.text, this.placeDateTime, this.userId, this.id);
}

class NoteModel {
  List<NoteDataModel>? noteDataModel;
  NoteModel(this.noteDataModel);
}

//-- Get User Model
class UserDataModel {
  String username;

  String password;

  String email;

  String imageAsBase64;

  String intrestId;

  String id;
  UserDataModel(this.username, this.password, this.email, this.imageAsBase64,
      this.intrestId, this.id);
}

class UserModel {
  List<UserDataModel> userDataModel;
  UserModel(this.userDataModel);
}

//-- Get Intersts Model
class InterstesDataModel {
  String intrestText;

  String id;

  InterstesDataModel(this.intrestText, this.id);
}

class InterstesModels {
  List<InterstesDataModel>? interstesData;
  InterstesModels(this.interstesData);
}

//-- Get Note Model
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

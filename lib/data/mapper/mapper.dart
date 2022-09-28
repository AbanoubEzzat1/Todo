//-- Get User Data Mapper
import 'package:abanoub_flutter_task/app/constants.dart';
import 'package:abanoub_flutter_task/data/responses/responses.dart';
import 'package:abanoub_flutter_task/app/extintion.dart';

import '../../domain/models.dart';
import '../network/responsemodel.dart';

extension UsersResponseDataMapper on NoteDataResponse? {
  NoteDataModel toDomain() {
    return NoteDataModel(
      this?.text.orEmpty() ?? Constants.empty,
      this?.placeDateTime.orEmpty() ?? Constants.empty,
      this?.userId.orEmpty() ?? Constants.empty,
      this?.id.orEmpty() ?? Constants.empty,
    );
  }
}

// extension UsersResponseMapper on NoteResponse? {
//   NoteModel toDomain() {
//     return NoteModel(this!.noteDataResponse.toDomain());
//   }
// }

extension UsersResponseMapper on NoteResponse? {
  NoteModel toDomain() {
    List<NoteDataModel> usersResponseData = (this
                ?.noteDataResponse
                .map((bannersResponse) => bannersResponse.toDomain()) ??
            const Iterable.empty())
        .cast<NoteDataModel>()
        .toList();
    return NoteModel(usersResponseData);
  }
}

extension NotesResponseMapper on NotesResponse? {
  NoteDataModel toDomain() {
    return NoteDataModel(
      this?.text.orEmpty() ?? Constants.empty,
      this?.placeDateTime.orEmpty() ?? Constants.empty,
      this?.userId.orEmpty() ?? Constants.empty,
      this?.id.orEmpty() ?? Constants.empty,
    );
  }
}

// extension NotesAllDataResponseMapper on NotesAllDataResponse? {
//   NotesAllDataModel toDomain() {
//     return NotesAllDataModel(this?.noteResponse.toDomain());
//   }
// }

//-- Get User Data Mapper
import 'package:abanoub_flutter_task/app/constants.dart';
import 'package:abanoub_flutter_task/data/responses/responses.dart';
import 'package:abanoub_flutter_task/app/extintion.dart';

import '../../domain/models.dart';
import '../network/responsemodel.dart';

extension NoteResponseDataMapper on NoteDataResponse? {
  NoteDataModel toDomain() {
    return NoteDataModel(
      this?.text.orEmpty() ?? Constants.empty,
      this?.placeDateTime.orEmpty() ?? Constants.empty,
      this?.userId.orEmpty() ?? Constants.empty,
      this?.id.orEmpty() ?? Constants.empty,
    );
  }
}

extension NoteResponseMapper on NoteResponse? {
  NoteModel toDomain() {
    List<NoteDataModel> usersResponseData = (this
                ?.noteDataResponse
                ?.map((bannersResponse) => bannersResponse.toDomain()) ??
            const Iterable.empty())
        .cast<NoteDataModel>()
        .toList();
    return NoteModel(usersResponseData);
  }
}

// extension NotesResponseMapper on NotesResponse? {
//   NoteDataModel toDomain() {
//     return NoteDataModel(
//       this?.text.orEmpty() ?? Constants.empty,
//       this?.placeDateTime.orEmpty() ?? Constants.empty,
//       this?.userId.orEmpty() ?? Constants.empty,
//       this?.id.orEmpty() ?? Constants.empty,
//     );
//   }
// }

extension UserDataResponseMapper on UserDataResponse? {
  UserDataModel toDomain() {
    return UserDataModel(
      this?.username.orEmpty() ?? Constants.empty,
      this?.password.orEmpty() ?? Constants.empty,
      this?.email.orEmpty() ?? Constants.empty,
      this?.imageAsBase64.orEmpty() ?? Constants.empty,
      this?.intrestId.orEmpty() ?? Constants.empty,
      this?.id.orEmpty() ?? Constants.empty,
    );
  }
}

extension UserResponseMapper on UserResponse? {
  UserModel toDomain() {
    List<UserDataModel> userDataModel = (this
                ?.userDataResponse
                .map((bannersResponse) => bannersResponse.toDomain()) ??
            const Iterable.empty())
        .cast<UserDataModel>()
        .toList();
    return UserModel(userDataModel);
  }
}

extension InterstesDataResponseMapper on InterstesDataResponse? {
  InterstesDataModel toDomain() {
    return InterstesDataModel(
      this?.intrestText.orEmpty() ?? Constants.empty,
      this?.id.orEmpty() ?? Constants.empty,
    );
  }
}

extension InterstesResponseMapper on InterstesResponse? {
  InterstesModels toDomain() {
    List<InterstesDataModel> interstesData = (this
                ?.interstesDataResponse
                ?.map((bannersResponse) => bannersResponse.toDomain()) ??
            const Iterable.empty())
        .cast<InterstesDataModel>()
        .toList();
    return InterstesModels(interstesData);
  }
}

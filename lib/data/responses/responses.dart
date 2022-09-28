import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

//-- Get Note Response
@JsonSerializable()
class NoteDataResponse {
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "placeDateTime")
  String? placeDateTime;
  @JsonKey(name: "userId")
  String? userId;
  @JsonKey(name: "id")
  String? id;
  NoteDataResponse(this.text, this.placeDateTime, this.userId, this.id);
  factory NoteDataResponse.fromJson(Map<String, dynamic> json) =>
      _$NoteDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NoteDataResponseToJson(this);
}

@JsonSerializable()
class NoteResponse extends BaseResponse {
  List<NoteDataResponse>? noteDataResponse;
  NoteResponse(this.noteDataResponse);
  factory NoteResponse.fromJson(Map<String, dynamic> json) =>
      _$NoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NoteResponseToJson(this);
}

//-- Get User Response
@JsonSerializable()
class UserDataResponse {
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "password")
  String? password;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "imageAsBase64")
  String? imageAsBase64;
  @JsonKey(name: "intrestId")
  String? intrestId;
  @JsonKey(name: "id")
  String? id;
  UserDataResponse(this.username, this.password, this.email, this.imageAsBase64,
      this.intrestId, this.id);
  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataResponseToJson(this);
}

@JsonSerializable()
class UserResponse extends BaseResponse {
  List<UserDataResponse> userDataResponse;
  UserResponse(this.userDataResponse);
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

//-- Get Interstes Response
@JsonSerializable()
class InterstesDataResponse {
  @JsonKey(name: "intrestText")
  String? intrestText;
  @JsonKey(name: "id")
  String? id;

  InterstesDataResponse(this.intrestText, this.id);
  factory InterstesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$InterstesDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InterstesDataResponseToJson(this);
}

@JsonSerializable()
class InterstesResponse extends BaseResponse {
  List<InterstesDataResponse>? interstesDataResponse;
  InterstesResponse(this.interstesDataResponse);
  factory InterstesResponse.fromJson(Map<String, dynamic> json) =>
      _$InterstesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InterstesResponseToJson(this);
}

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
  List<NoteDataResponse> noteDataResponse;
  NoteResponse(this.noteDataResponse);
  factory NoteResponse.fromJson(Map<String, dynamic> json) =>
      _$NoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NoteResponseToJson(this);
}

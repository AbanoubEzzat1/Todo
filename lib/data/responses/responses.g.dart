// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..status = json['status'] as bool?
  ..message = json['message'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

NoteDataResponse _$NoteDataResponseFromJson(Map<String, dynamic> json) =>
    NoteDataResponse(
      json['text'] as String?,
      json['placeDateTime'] as String?,
      json['userId'] as String?,
      json['id'] as String?,
    );

Map<String, dynamic> _$NoteDataResponseToJson(NoteDataResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'placeDateTime': instance.placeDateTime,
      'userId': instance.userId,
      'id': instance.id,
    };

NoteResponse _$NoteResponseFromJson(Map<String, dynamic> json) => NoteResponse(
      (json['noteDataResponse'] as List<dynamic>?)
          ?.map((e) => NoteDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$NoteResponseToJson(NoteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'noteDataResponse': instance.noteDataResponse,
    };

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(
      json['username'] as String?,
      json['password'] as String?,
      json['email'] as String?,
      json['imageAsBase64'] as String?,
      json['intrestId'] as String?,
      json['id'] as String?,
    );

Map<String, dynamic> _$UserDataResponseToJson(UserDataResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'imageAsBase64': instance.imageAsBase64,
      'intrestId': instance.intrestId,
      'id': instance.id,
    };

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      (json['userDataResponse'] as List<dynamic>)
          .map((e) => UserDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'userDataResponse': instance.userDataResponse,
    };

InterstesDataResponse _$InterstesDataResponseFromJson(
        Map<String, dynamic> json) =>
    InterstesDataResponse(
      json['intrestText'] as String?,
      json['id'] as String?,
    );

Map<String, dynamic> _$InterstesDataResponseToJson(
        InterstesDataResponse instance) =>
    <String, dynamic>{
      'intrestText': instance.intrestText,
      'id': instance.id,
    };

InterstesResponse _$InterstesResponseFromJson(Map<String, dynamic> json) =>
    InterstesResponse(
      (json['interstesDataResponse'] as List<dynamic>?)
          ?.map(
              (e) => InterstesDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$InterstesResponseToJson(InterstesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'interstesDataResponse': instance.interstesDataResponse,
    };

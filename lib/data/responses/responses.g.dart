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
      (json['noteDataResponse'] as List<dynamic>)
          .map((e) => NoteDataResponse.fromJson(e as Map<String, dynamic>))
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

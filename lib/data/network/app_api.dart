import 'package:abanoub_flutter_task/app/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../responses/responses.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;
  @GET("https://noteapi.popssolutions.net/notes/getall")
  Future<NoteResponse> getAllNotes();
  @GET("https://noteapi.popssolutions.net/users/getall")
  Future<UserResponse> getAllUsers();
  @GET("https://noteapi.popssolutions.net/intrests/getall")
  Future<InterstesResponse> getAllInterstes();
}

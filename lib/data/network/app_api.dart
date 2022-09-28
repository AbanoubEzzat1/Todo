import 'package:abanoub_flutter_task/app/constants.dart';
import 'package:abanoub_flutter_task/data/network/responsemodel.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../responses/responses.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;
  @GET("https://noteapi.popssolutions.net/notes/getall")
  Future<NoteResponse> getAllNotes();
}

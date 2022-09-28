// ignore_for_file: constant_identifier_names

import 'package:abanoub_flutter_task/app/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String APPLICATIO_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";

class DioFactory {
  DioFactory();
  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, dynamic> headers = {
      CONTENT_TYPE: APPLICATIO_JSON,
      ACCEPT: APPLICATIO_JSON,
    };
    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: headers,
      receiveTimeout: Constants.apiTimeOut,
      sendTimeout: Constants.apiTimeOut,
    );
    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }
    return dio;
  }
}

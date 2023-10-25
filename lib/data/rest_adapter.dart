import 'dart:developer';

import 'package:dio/dio.dart';

import '../core/utils/store.dart';
import 'app_interceptor.dart';


class RestAdapter {
  static final RestAdapter _singleton = RestAdapter._internal();

  final dio = createDio();

  factory RestAdapter() {
    log("Initialized RestAdapter ${_singleton.hashCode}");
    return _singleton;
  }

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: Store.baseurl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));


    dio.interceptors.addAll({
      LogInterceptor(
          responseBody: true,
          requestBody: true,
          request: true,
          requestHeader: true,
      logPrint: (object){
            log(object.toString());
      }),
      AppInterceptors(dio),
      ErrorInterceptors(dio),
    });
    return dio;
  }

  RestAdapter._internal();

// Dio get getDio => _dio;
}

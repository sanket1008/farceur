import 'dart:developer';

import 'package:dio/dio.dart';

import '../core/utils/custom_alert.dart';
import '../core/utils/shared_keys.dart';
import '../core/utils/storage_utils.dart';
import '../core/utils/store.dart';
import 'model/common_response.dart';


class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  String aToken = '';

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    //options.headers['Authorization'] = 'Token ${Store.token}';


    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = '*/*';

    return handler.next(options);
  }
}

class ErrorInterceptors extends Interceptor {
  late Dio dio;

  ErrorInterceptors(this.dio);

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            //throw BadRequestException(err.requestOptions);
            log("400 error message : ${err.response?.data}");

            var response =
                CommonResponse.fromJson(err.response?.data, (json) => null);

            String path = err.requestOptions.path;

            /* CustomAlert.showGenericToast(
                "Path: $path\nStatus: ${response.statusCode}\nMessage: ${response.message ?? "Something went wrong"}");*/

            CustomAlert.showGenericToast(
                response.message ?? "Something went wrong");
            return handler.next(err);
          case 401:

            var oldAccessToken = StorageUtil.getString(SharedKeys.ACCESS_TOKEN);


            //err.requestOptions.queryParameters =

            //throw UnauthorizedException(err.requestOptions);

            /*if (oldAccessToken.isNotEmpty) {
              var accessToken = await refreshAccessToken();
              err.requestOptions.queryParameters = {
                "access_token": accessToken
              };
              handler.resolve(await dio.fetch(err.requestOptions));
            } else {
              var response =
                  CommonResponse.fromJson(err.response?.data, (json) => null);

              CustomAlert.showGenericToast(
                  response.message ?? "Something went wrong");
            }*/

            return handler.next(err);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioExceptionType.cancel:
        break;

      default:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    log("bad request ${this.error}");

    return message ?? "Invalid request";
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}

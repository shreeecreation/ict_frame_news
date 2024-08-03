import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:news/src/core/core.dart';
import 'package:news/src/core/interceptor/interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class RegisterModules {
  @singleton
  AppRouter get router => AppRouter();

  @lazySingleton
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();

  @lazySingleton
  InternetConnectionChecker get connectionChecker => InternetConnectionChecker();
  @lazySingleton
  Dio dio(DeviceInterceptor deviceInterceptor, AuthInterceptor authInterceptor) => Dio(BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        receiveTimeout: const Duration(milliseconds: 60000),
        connectTimeout: const Duration(milliseconds: 60000),
        responseType: ResponseType.json,
        headers: <String, dynamic>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ))
        ..interceptors.addAll([
          if (kDebugMode)
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseBody: true,
              responseHeader: true,
              error: true,
              compact: true,
              request: true,
            ),
          deviceInterceptor,
          authInterceptor,
        ]);
}

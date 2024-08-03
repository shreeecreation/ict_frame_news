import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../error/app_error.dart';

extension DioExpceptionX on DioException {
  AppError get toException {
    if (kDebugMode) {
      print(error);
    }
    final data = response?.data as Map<String, dynamic>? ?? {};
    switch (type) {
      case DioExceptionType.badResponse:
        if ((response?.statusCode ?? 0) >= 500) {
          return AppError.serverError(
            error: response?.statusMessage ?? 'Server Error',
          );
        }

        String? errorMessage;
        if (data['detail'] is String?) {
          errorMessage = data['detail'] as String?;
        } else if (data['detail'] is Map<String, dynamic>) {
          errorMessage = ((data['detail'] as Map<String, dynamic>?)?.values.first as List<dynamic>?)?.first as String?;
        } else {
          errorMessage = 'Unable to process error. This happens if error is not in standard format.';
        }

        return AppError.serverError(error: errorMessage ?? "Some error occured");

      case DioExceptionType.cancel:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.badCertificate:
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        if (error is SocketException) {
          return const AppError.noInternet(error: NoInternetError());
        } else {
          return AppError.serverError(
            error: response?.statusMessage ?? "Some error occured",
          );
        }
    }
  }
}

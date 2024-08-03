import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@Freezed(copyWith: false, fromJson: false, toJson: false)
class AppError with _$AppError {
  const factory AppError.serverError({required String error}) =
      _ServerError;

  const factory AppError.noInternet({required NoInternetError error}) =
      _NoInternet;
}

class ServerError {
  const ServerError({this.code = 400, required this.message});

  final int code;
  final String message;
}

class NoInternetError extends ServerError {
  const NoInternetError() : super(message: 'No Internet Connection');
}


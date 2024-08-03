import 'package:dio/dio.dart';
import 'package:news/src/core/core.dart';

@lazySingleton
class AuthInterceptor extends QueuedInterceptorsWrapper {
  AuthInterceptor(
    this._service,
  );
  final SessionService _service;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    handler.reject(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final hasSession = await _service.hasSession;
    if (hasSession) {
      final token = await _service.token;
      options.headers.addAll({'Authorization': 'Token $token'});
    }
    handler.next(options);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}

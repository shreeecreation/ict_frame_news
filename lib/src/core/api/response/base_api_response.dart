import 'package:equatable/equatable.dart';

class ApiResponse<T> extends Equatable {
  const ApiResponse({
    required this.data,
    required this.detail,
    this.non_field_errors,
    this.responseType,
    this.count,
    this.next,
    this.previous,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      data: json['results'] as T,
      detail: json['detail'] as String?,
      responseType: json['responseType'] as String?,
      non_field_errors: json['non_field_errors'] as List<String>?,
    );
  }

  final String? detail;
  final T data;
  final String? responseType;
  final List<String>? non_field_errors;
  final int? count;
  final String? next;
  final String? previous;

  @override
  List<Object?> get props => [detail, data, responseType];

  // tojson
  Map<String, dynamic> toJson() {
    return {
      'detail': detail,
      'data': data,
      'responseType': responseType,
      'non_field_errors': non_field_errors,
      'count': count,
      'next': next,
      'previous': previous,
    };
  }
}

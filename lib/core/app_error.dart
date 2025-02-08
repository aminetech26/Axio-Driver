import 'dart:convert';

import 'package:axio_driver/core/error_code.dart';

class AppError {
  final ErrorCode code;
  final String? message;

  AppError({
    required this.code,
    this.message,
  });

  @override
  String toString() => 'AppError(code: $code, message: $message)';

  factory AppError.fromMap(Map<String, dynamic> map) {
    return AppError(
      code: fromString(map['code']),
      message: map['message'] ?? '',
    );
  }

  static ErrorCode fromString(String code) {
    return ErrorCode.values.firstWhere(
      (e) => e.toString() == 'ErrorCode.$code',
      orElse: () => ErrorCode.ERREUR_INATTENDUE,
    );
  }

  static AppError handle(dynamic error) {
    return AppError.fromMap(json.decode(error.toString()));
  }
}

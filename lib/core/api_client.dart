import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  Future<dynamic> get(String path, {Map<String, dynamic>? queryParams}) async {
    final response = await _dio.get(path, queryParameters: queryParams);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(response.statusMessage);
    }
  }

  Future<dynamic> post(String path, dynamic data) async {
    final response = await _dio.post(path, data: data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}

import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient({required Dio dio}) : _dio = dio;

  Dio get dio => _dio;

  void init() {
    _dio.interceptors.addAll([
      LogInterceptor(
        error: true,
        requestBody: true,
        responseBody: true,
      ),
    ]);
  }
}
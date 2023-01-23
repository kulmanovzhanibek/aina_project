import 'package:aina_project/core/const/flavor_config.dart';
import 'package:aina_project/core/injection_container.dart';
import 'package:aina_project/core/utils/dio/dio_interceptor.dart';
import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  Dio get getDio => _dio;

  DioClient(this._dio) {
    _dio.options = options;
    _dio.interceptors.addAll(_interceptors);
  }

  final List<Interceptor> _interceptors = [
    LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ),
    AuthInterceptor(),
  ];

  final options = BaseOptions(
    baseUrl: FlavorConfig.instance!.values.baseUrl,
    contentType: 'application/json',
    connectTimeout: 30000,
    receiveTimeout: 30000,
    sendTimeout: 20000,
    responseType: ResponseType.json,
  );
}

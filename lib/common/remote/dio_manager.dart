import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

class DioManager with DioMixin implements Dio {
  String _baseUrl = 'https://jsonplaceholder.typicode.com';

  DioManager._([BaseOptions options]) {
    options = BaseOptions(
        baseUrl: _baseUrl,
        contentType: 'application/json',
        connectTimeout: 30000,
        sendTimeout: 30000,
        receiveTimeout: 30000);
    this.options = options;
    interceptors
      ..add(DioCacheManager(CacheConfig(baseUrl: _baseUrl)).interceptor
          as Interceptor)
      ..add(LogInterceptor(responseBody: true));
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => DioManager._();
}

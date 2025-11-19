import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> post({
    required dynamic body,
    required String url,
    String? token,
    String? contentType,
    Map<String, String>? headers,
  }) async {
    // Build headers
    final mergedHeaders = {
      if (token != null) 'Authorization': 'Bearer $token',
      ...?headers, // Add custom headers if provided
    };

    return dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: mergedHeaders,
      ),
    );
  }
}

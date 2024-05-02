import 'package:http/http.dart' as http;
import 'package:http/http.dart';

abstract class HTTPClient {
  // perform HTTP GET request
  Future<dynamic> get(Uri uri) async {
    return http.get(uri);
  }

  // perform HTTP POST operation
  Future<Response> post(Uri uri, dynamic payload) async {
    return http.post(uri, body: payload);
  }
}

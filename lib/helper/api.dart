import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    final http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'There is an error with status code ${response.statusCode}',
      );
    }
  }

  Future<Map<String, dynamic>> post({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'There is an error with status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }

  Future<void> put({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );
    if (response.statusCode == 200) {
    } else {
      throw Exception(
        'There is an error with status code ${response.statusCode}}',
      );
    }
  }
}

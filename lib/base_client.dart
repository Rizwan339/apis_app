import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

class BaseClient {
  var client = http.Client();

  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      'Authorization': 'Auth123456789=',
      'api_key': 'bcasug63514asv'
    };

    var response = await client.get(url, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return Text(e.toString());
    }
  }

  Future<dynamic> post(String api) async {}

  Future<dynamic> put(String api) async {}

  Future<dynamic> delete(String api) async {}
}

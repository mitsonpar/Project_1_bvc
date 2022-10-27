import 'dart:async';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:bvc/model.dart';
import 'dart:convert';

class All_apis {
  All_apis(){

  }
  static Future getLogin() {
    return http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  }
  Future <List<Model>> fetchData() async {
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => new Model.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
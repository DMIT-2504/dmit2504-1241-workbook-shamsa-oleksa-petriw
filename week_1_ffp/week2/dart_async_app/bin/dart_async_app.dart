import 'dart:convert';

import 'package:dart_async_app/dart_async_app.dart' as dart_async_app;
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  print('Hello world: ${dart_async_app.calculate()}!');
  getDogBreedsData();
}

void getDogData() async {
  var dogData = await getJson("https://dog.ceo/api/breeds/image/random");
}

void getDogBreedsData() async {
  var dogData = await getJson("https://dog.ceo/api/breeds/list/all");
  print(dogData["message"]["terrier"][0]);
}

Future<dynamic> getJson(String endPoint) async {
  var url = Uri.parse(endPoint);
  var response = await http.get(url);
  print(response);
  var decodedJson = jsonDecode(response.body);
  return decodedJson;
}
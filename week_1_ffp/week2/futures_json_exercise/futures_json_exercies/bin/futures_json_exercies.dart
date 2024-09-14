import 'dart:convert';

import 'package:futures_json_exercies/futures_json_exercies.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {

  String searchTerm;
  bool keepSearching = true;

  do {
    searchTerm = prompt("Please enter a word to search: ");
    getDictionaryData(searchTerm);

    keepSearching = prompt("continue? Y/N").toUpperCase() == "Y";

  } while (keepSearching);

  print("exiting...");
}

void getDictionaryData(String word) async {
  String baseEndpoint = "https://api.dictionaryapi.dev/api/v2/entries/en/";
  var dictionaryData = await getJson("$baseEndpoint$word");
  String definition = dictionaryData[0]['meanings'][0]['definitions'][0]['definition'];

  print("Word              Definition");
  print("------------      -----------------------------");
  print("$word     $definition");
}

Future<dynamic> getJson(String endPoint) async {
  var url = Uri.parse(endPoint);
  var response = await http.get(url);
  print(response);
  var decodedJson = jsonDecode(response.body);
  return decodedJson;
}
import 'dart:convert';

import 'package:advanc/model/person_model.dart';
import 'package:http/http.dart' as http;

class Apiservice{
  Future<Person> getPerson() async {
    final response = await http.get(Uri.parse('https://run.mocky.io/v3/95234dec-fc30-477b-97c6-12c58a0c0e93'));
   if (response.statusCode == 200) {
      return Person.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load person');
    }
}
}
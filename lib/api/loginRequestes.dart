import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pasto_felice_mobile/parsing/allergens.dart';

Future<List<Allergens>> fetchAllergens() async {
  final response = await http
      .get(Uri.parse('https://pasto-felice-api.onrender.com/allergens'));

  if (response.statusCode == 200) {
    return parseAllergen(response.body);
  } else {
    throw Exception('Failed to load allergies');
  }
}

List<Allergens> parseAllergen(String responseBody) {
  final parsed =
  (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();

  return parsed.map<Allergens>((json) => Allergens.fromJson(json)).toList();
}
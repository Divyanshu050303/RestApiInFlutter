import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:trysomethingnew/getx/api/Makeup.dart';
import 'package:trysomethingnew/getx/api/ProductModel.dart';

class ApiServices{

 static Future<List<ProductModel>> fetchProduct() async {
    print("Function Called");
    final response = await http.get(
      Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'),
    );
    print("Url");
    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> data = json.decode(response.body);
      // final List<dynamic> results = [data['results']];
      List<ProductModel> pokemonList = [];
      for (Map result in results) {
        final pokemonResponse = await http.get(Uri.parse(result['url']));
        if (pokemonResponse.statusCode == 200) {
          final Map<String, dynamic> pokemonData =
          json.decode(pokemonResponse.body);
          pokemonList.add(ProductModel.fromJson(pokemonData));
        }
      }
      return pokemonList;
    } else {
      throw Exception('Failed to load Pokémon');
    }
}
}
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shodai_mama/models/item.dart';


const String randomAPI = 'https://fakestoreapi.com/products';

class ItemService {
  Future<List<Item>> fetchQuotes() async {
    http.Response response = await http.get(Uri.parse(randomAPI));
    if (response.statusCode == 200) {
      List<dynamic> quotes = jsonDecode(response.body);
      return quotes.map((json) => Item.fromJson(json)).toList();
    } else {
      throw Exception('Something went wrong, ${response.statusCode}');
    }
  }
}


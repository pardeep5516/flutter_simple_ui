import 'dart:convert' as json;

import 'package:gallary/models/galary.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

final apiKey = '563492ad6f9170000100000127b90902493a481f8fd0ae1932f9d85d';
final url = 'https://api.pexels.com/v1/search?query=people';
final header = {HttpHeaders.authorizationHeader: '$apiKey'};

class NetworkHelper {
  Future<Gallery> fetchImage() async {
    try {
      final response = await http.get(url, headers: header);
      if (response.statusCode == 200) {
        return Gallery.fromJson(json.jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print('api images error $e');
    }
    return null;
  }
}

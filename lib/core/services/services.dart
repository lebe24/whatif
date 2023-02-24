import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:whatif/core/model/cast.dart';

// String api = env['VAR_NAME'];

const baseUrl = 'https://api.themoviedb.org/3/';
var key = '?api_key=2b22ab5e2d69c8926e451e306dcf9225';

Future getMovie(int ep) async {
  const endPoint = 'tv/91363-what-if/season/1/episode/';
  final String url = '$baseUrl$endPoint$ep$key';

  try {
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) return castFromJson(response.body);
  } catch (e) {
    throw Exception('failed to load movies');
  }
}

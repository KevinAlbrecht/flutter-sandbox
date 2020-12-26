import 'dart:convert';

import 'package:flutterSandbox/models/Genre.dart';
import 'package:flutterSandbox/models/api/genres_api_model.dart';
import 'package:http/http.dart' as http;

class MovieApiService {
  final String _apiBaseUrl = "http://192.168.1.71:7071/api/";
  final String _genresSegment = "genres/";
  final String _moviesByGenreIdSegment = "movies/genre/";
  final String _moviesByIdSegment = "movies/genre/";

  Future<GenresApiModel> getGenres() async {
    final response = await http.get("$_apiBaseUrl$_genresSegment");
    final decoded = json.decode(response.body);
    return GenresApiModel.fromJson(decoded);
  }
}

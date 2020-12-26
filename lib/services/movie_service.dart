import 'package:flutterSandbox/models/Genre.dart';
import 'package:flutterSandbox/models/api/genres_api_model.dart';

import '../injections.dart';
import './index.dart';

class MovieService {
  final MovieApiService _api = locator<MovieApiService>();

  Future<GenresApiModel> getGenres() async {
    return await _api.getGenres();
  }
}

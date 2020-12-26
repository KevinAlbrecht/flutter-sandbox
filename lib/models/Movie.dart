import 'package:flutter/foundation.dart';

class Movie {
  final int id;
  final String title;
  final double voteAverage;
  final int voteCount;
  final DateTime releaseDate;
  final String backdropPath;
  final String overview;
  final String posterPath;

  Movie({
    @required this.id,
    @required this.title,
    @required this.voteAverage,
    @required this.voteCount,
    @required this.releaseDate,
    @required this.backdropPath,
    @required this.overview,
    @required this.posterPath,
  });

  Movie.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        voteAverage = json['voteAverage'],
        voteCount = json['voteCount'],
        releaseDate = json['releaseDate'],
        backdropPath = json['backdropPath'],
        overview = json['overview'],
        posterPath = json['posterPath'];
}

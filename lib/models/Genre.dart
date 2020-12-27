import 'package:flutter/foundation.dart';

class Genre {
  final int id;
  final String title;

  const Genre({
    @required this.id,
    @required this.title,
  });

  Genre.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];
}

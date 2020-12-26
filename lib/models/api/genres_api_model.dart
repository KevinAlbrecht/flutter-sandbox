import 'package:flutter/foundation.dart';
import 'package:flutterSandbox/models/Genre.dart';

class GenresApiModel {
  final int count;
  final List<Genre> data;

  GenresApiModel({
    @required this.count,
    @required this.data,
  });

  GenresApiModel.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        data = List<Genre>.from(json['data'].map((i) => Genre.fromJson(i)));
}

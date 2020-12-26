import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterSandbox/models/Genre.dart';
import 'package:flutterSandbox/injections.dart';
import 'package:flutterSandbox/services/api/movie_api_service.dart';

import 'package:flutter/material.dart';

class MoviesLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MoviesLayoutState();
}

class _MoviesLayoutState extends State<MoviesLayout> {
  final MovieApiService _movieApi = locator<MovieApiService>();
  List<Genre> genres = [];

  Future<void> loadGenres() async {
    final result = await _movieApi.getGenres();
    setState(() {
      genres = result.data;
    });
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, loadGenres);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(genres.length.toString()));
  }
}

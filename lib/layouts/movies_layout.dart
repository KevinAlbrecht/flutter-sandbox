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
  List<ListTile> genresWidgets = [];

  Future<void> loadGenres() async {
    final result = await _movieApi.getGenres();
    setState(() {
      genresWidgets = result.data
          .map((e) => new ListTile(
                onTap: () => print(e.title + e.id.toString()),
                title: Text(e.title),
              ))
          .toList();
    });
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, loadGenres);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            Container(
              height: 70.0,
              child: DrawerHeader(
                padding: EdgeInsets.only(top: 10.0),
                margin: EdgeInsets.all(0),
                child: Text(
                  'Genres',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            ...genresWidgets
          ],
        ),
      ),
      body: Center(
        child: Text(genresWidgets.length.toString()),
      ),
    );
  }
}

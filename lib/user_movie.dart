import 'package:flutter/material.dart';
import 'newmovie.dart';
import 'movielist.dart';
import 'models/Listitem.dart';


class UserMovie extends StatefulWidget {
  @override
  _UserMovieState createState() => _UserMovieState();
}

class _UserMovieState extends State<UserMovie> {
  final List<Listitem> _useritem = [
    Listitem(name: 'Inception', director: 'C. Nolan'),
    Listitem(name: 'Justice League', director: 'Zack Snyder'),
  ];

  void _addNewMovie(String name, String director) {
    final newmv = Listitem(name: name, director: director);

    setState(() {
      _useritem.add(newmv);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewMovie(_addNewMovie),
        MovieList(_useritem),
      ],
    );
  }
}

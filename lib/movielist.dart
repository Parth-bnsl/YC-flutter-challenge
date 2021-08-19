import 'package:flutter/material.dart';
import '/models/Listitem.dart';

class MovieList extends StatelessWidget {
  final List<Listitem> item;

  MovieList(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: item.map((lt) {
        return Card(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("Image"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      lt.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blue),
                    ),
                    Text(
                      "Directed by " + lt.director,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                )
              ],
            ));
      }).toList(),
    );
  }
}

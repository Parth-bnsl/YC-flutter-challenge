import 'package:flutter/material.dart';

class NewMovie extends StatelessWidget {
  final Function addmv;
  final namecontroller = TextEditingController();
  final directorcontroller = TextEditingController();
  NewMovie(this.addmv);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title of Movie"),
              controller: namecontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Name of Director"),
              controller: directorcontroller,
            ),
            TextButton(
              child: Text(
                "Add",
                style: TextStyle(color: Colors.blueGrey.shade400),
              ),
              onPressed: () {
                addmv(namecontroller.text, directorcontroller.text);
              },
            )
          ],
        ),
      ),
    );
  }
}

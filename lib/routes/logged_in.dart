import 'package:flutter/material.dart';

class LoggedIn extends StatefulWidget {
  final String username;

  LoggedIn({this.username});

  @override
  State<StatefulWidget> createState() => _LoggedInState(username: username);
}

class _LoggedInState extends State<LoggedIn> {
  String username;

  _LoggedInState({this.username});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.menu, size: 30, color: Colors.black),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Text(
              "$username",
              style: TextStyle(color: Colors.redAccent),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.green,
          child: Icon(Icons.add, color: Colors.white,),
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Colors.amber,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.ac_unit,
                    color: Colors.cyan,
                    size: 50,
                  ),
                  title: Text("Hello world List"),
                  trailing: Icon(
                    Icons.delete_forever,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Colors.redAccent,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.accessible,
                    color: Colors.cyan,
                    size: 50,
                  ),
                  title: Text("Hello world List two"),
                  trailing: Icon(
                    Icons.delete_forever,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

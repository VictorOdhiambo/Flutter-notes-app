import 'package:flutter/material.dart';

import 'logged_in.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  var _username = "";
  var _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Hello World Flutter",
                  style: TextStyle(
                      color: Colors.red, letterSpacing: 2.0, fontSize: 22.0),
                ),
                //username
                username(context),
                //password
                password(context),
                Container(
                  width: 180,
                  height: 40,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        String name = usernameController.text.trim();
                        String password = passwordController.text.trim();
                        if (loginUser(name, password)) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            _username = "";
                            return LoggedIn(username: name);
                          }));
                        } else {
                          _username = "Login failed";
                        }
                      });
                    },
                    color: Colors.cyan,
                    elevation: 5.0,
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                //login info
                info(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  //username widget
  Widget username(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        textDirection: TextDirection.ltr,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: "Username",
            hintText: "Enter your username",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
//      style: ,
        controller: usernameController,
      ),
    );
  }

  //password widget
  Widget password(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        textDirection: TextDirection.ltr,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
//      style: ,
        controller: passwordController,
      ),
    );
  }

  //login info
  Widget info(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(_username, style: TextStyle(color: Colors.green)),
    );
  }

  bool loginUser(username, password) {
    return (username == ("Victor") && password == ("qwerty")) ? true : false;
  }
}

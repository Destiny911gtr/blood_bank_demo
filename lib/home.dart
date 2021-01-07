import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'UserDetails.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          BottomThemeSwitcher(),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                ButtonBar(
                  children: [
                    FlatButton(
                      color: Colors.red,
                      splashColor: Colors.white54,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Login"),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserData()),
                        );
                      },
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserData()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Register"),
                      ),
                    ),
                  ],
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserData()),
                    );
                  },
                  child: Text("Forgot Password"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomThemeSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.format_paint_outlined),
      tooltip: 'Change app theme',
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlatButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setLight();
                },
                child: Text("Light Theme"),
              ),
              FlatButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setDark();
                },
                child: Text("Dark Theme"),
              ),
              FlatButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setSystem();
                },
                child: Text("System Theme (Android 10+)"),
              ),
            ],
          ),
        );
      },
    );
  }
}

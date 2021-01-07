import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:blood_bank_demo/style.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode savedThemeMode;

  const MyApp({Key key, this.savedThemeMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightThemeData(),
      dark: darkThemeData(),
      initial: AdaptiveThemeMode.system /**/,
      builder: (theme, darkTheme) => MaterialApp(
        theme: theme,
        darkTheme: darkTheme,
        home: MyHomePage(title: 'Blood Bank'),
      ),
    );
  }
}

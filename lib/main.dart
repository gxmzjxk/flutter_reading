import 'package:flutter/material.dart';
import './pages/login/page.dart';

void main() => runApp(ReadingApp());


class ReadingApp extends StatelessWidget {
  const ReadingApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '体育+',
        theme:
            ThemeData(primarySwatch: Colors.blue),
        home: LoginPage());
  }
}
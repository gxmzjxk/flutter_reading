import 'package:flutter/material.dart';
import './pages/login/page.dart';
import 'package:fluwx/fluwx.dart' as fluwx;

import './send_auth.dart';

void main() => runApp(ReadingApp());

class ReadingApp extends StatefulWidget {
  ReadingApp({Key key}) : super(key: key);

  _ReadingAppState createState() => _ReadingAppState();
}

class _ReadingAppState extends State<ReadingApp> {
  @override
  void initState() {
    super.initState();
    _initFluwx();
  }

  _initFluwx() async {
    await fluwx.register(
        appId: "wxfd626b9032ca6f03",
        doOnAndroid: true,
        doOnIOS: true,
        enableMTA: false);
    var result = await fluwx.isWeChatInstalled();
    print("is installed $result");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '体育+',
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: <String, WidgetBuilder>{
          "sendAuth": (context) => SendAuthPage(),
        },
        home: LoginPage());
  }
}

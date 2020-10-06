import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haberler_api/pages/home.dart';
import './pages/loading.dart';
import './pages/news.dart';
import './pages/readnew.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/loading': (context) => Loading(),
        '/news': (context) => News(),
        '/readnew': (context) => ReadNew(),
      },
    );
  }
}

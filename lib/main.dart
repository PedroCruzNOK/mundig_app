import 'package:flutter/material.dart';
import 'package:mundig_app/src/pages/home_page.dart';
import 'package:mundig_app/src/pages/login_page.dart';
import 'package:mundig_app/src/pages/municipality_page.dart';
import 'package:mundig_app/src/pages/news_page.dart';
import 'package:mundig_app/src/pages/shoutIt_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
        'news': (BuildContext context) => NewsPage(),
        'municipality': (BuildContext context) => MunicipalityPage(),
        'shoutIt': (BuildContext context) => ShoutItPage()
      },
    );
  }
}
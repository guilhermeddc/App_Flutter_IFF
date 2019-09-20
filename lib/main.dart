import 'package:flutter/material.dart';
// import 'package:cae_na_rede/pages/HomePage.dart';
import 'package:cae_na_rede/pages/WelcomePage.dart';
// import 'package:cae_na_rede/pages/SettingsPage.dart';
// import 'package:cae_na_rede/pages/HistoryPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CAE na Rede",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomePage(),
      // routes: {
      //   '/': (context) => WelcomePage(),
      //   '/home': (context) => HomePage(),
      //   '/settings': (context) => SettingsPage(),
      //   '/history': (context) => HistoryPage(),
      // },
    );
  }
}

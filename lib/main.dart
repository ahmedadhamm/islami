import 'package:flutter/material.dart';
import 'package:untitled20/MyTheme.dart';
import 'package:untitled20/home/HomeScreen.dart';
import 'package:untitled20/sura_details/sura_detailes_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
    );
  }
}

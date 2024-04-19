import 'package:flutter/material.dart';
import 'package:netflix/screen/home_screen.dart';
import 'package:netflix/screen/more_screen.dart';
import 'package:netflix/screen/save_screen.dart';
import 'package:netflix/screen/search_screen.dart';
import 'package:netflix/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'netflix',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            hintColor: Colors.white),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                SearchScreen(),
                SaveScreen(),
                MoreScreen(),
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}

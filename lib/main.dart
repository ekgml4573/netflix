import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screen/home_screen.dart';
import 'package:netflix/screen/more_screen.dart';
import 'package:netflix/screen/like_screen.dart';
import 'package:netflix/screen/search_screen.dart';
import 'package:netflix/widget/bottom_bar.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
                LikeScreen(),
                MoreScreen(),
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}

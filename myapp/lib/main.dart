import 'package:flutter/material.dart';
import 'package:myapp/screens/main_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prtfolio on Flutter',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: "Pridi",
      ),
      home: DefaultTabController(
          length: 3,
          child: MyHomePage(title: 'Flutter Demo Home Page')),
      debugShowCheckedModeBanner: false,
    );
  }
}

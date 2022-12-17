
import 'package:flutter/material.dart';
import 'package:menuweb/hidden_drawer_menu.dart';
//import 'package:sidebar/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HiddenDrawer(),
        theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
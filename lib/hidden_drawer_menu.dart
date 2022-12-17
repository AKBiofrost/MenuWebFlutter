import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:menuweb/src/page/Menu.dart';
import 'package:menuweb/src/page/first.dart';
import 'package:menuweb/src/page/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
    );
  }
}

class HiddenDrawer extends StatefulWidget {
   const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State <HiddenDrawer> createState() => _HiddenDrawerState();

}

class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> _page=[];
  
  void initState(){
  
    super.initState(); 
    
    _page = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name:'MenuWeb ',
          baseStyle: TextStyle( fontWeight: FontWeight.bold,
              color: Colors.white
          ),
            selectedStyle: TextStyle(),
          colorLineSelected: Colors.white
        ),
        Home(),

      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name:'Menu ',
          baseStyle: TextStyle( fontWeight: FontWeight.bold,
              color: Colors.white
          ),
          selectedStyle: TextStyle(),
            colorLineSelected: Colors.white
        ),
        Menu(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name:'clientes',
          baseStyle: TextStyle( fontWeight: FontWeight.bold,
          color: Colors.white
          ),
          selectedStyle: TextStyle(),
            colorLineSelected: Colors.white

        ),
        FirstPage(),
      ),

  ];
    }

  @override
  Widget build(BuildContext context) {

    return HiddenDrawerMenu(
        screens: _page,
        backgroundColorMenu: Colors.deepOrange ,
        initPositionSelected: 0,
      slidePercent: 35,
      contentCornerRadius: 40,
      boxShadow: [],

    );

  }
    
  }


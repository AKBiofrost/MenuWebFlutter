
import 'package:flutter/material.dart';


class Menu extends StatefulWidget{
  const Menu({Key? key}): super(key:key);

  @override
  State<Menu> createState()=>_MenuState();



}

class _MenuState extends State <Menu>{
int _selectedIndex=0;

  void _navigateBottombar (int index){

    setState(() {
        _selectedIndex=index;
    });
  }

  @override

  Widget build(BuildContext context){

    return  Scaffold(
      body: Center(
      child: Text('segunda  pagina'),
    ),
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type:BottomNavigationBarType.fixed,
        onTap: _navigateBottombar,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'principal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'mensaje',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'persona',
          ),
        ],
      ),

    );
  }
}

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

  final List <Widget> _pages=[
   Center(
        child: Column(
        children: [
        SizedBox(height: 25,),

    Text('Home',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    ),

]
    )

),

Center(
child: Column(
children: [
SizedBox(height: 25,),

Text('mensajes',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 32,
),
),

]
)
),  Center(
child: Column(
children: [
SizedBox(height: 25,),

Text('persona',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 32,
),
),

]
)
)

  ];


  @override

  Widget build(BuildContext context){

    return  Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        type:BottomNavigationBarType.fixed,
        onTap: _navigateBottombar,
        items:const [
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
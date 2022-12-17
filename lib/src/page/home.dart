import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  const Home({Key? key}): super(key:key);

  @override
  State<Home> createState()=>_HomeState();

}

class _HomeState extends State <Home>{

  @override

  Widget build(BuildContext context){

    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                      Icons.food_bank,
                  size: 130),
                  SizedBox(height: 25,),

                  Text('Bienvenido',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Iniciar usuario',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email'
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],

                      ),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Passworld'
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25),
                    child: Container(

                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:Colors.white),
                        borderRadius: BorderRadius.circular(12),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),

                      child:Center(
                        child: Text(
                          'Iniciar sesion',
                          style: TextStyle(

                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),

                        ),



                      )


                      ),

                    ),







                ],
              ),

            )

        )

    );
  }
}
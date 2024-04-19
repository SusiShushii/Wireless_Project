import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class FoodMenuPage extends StatelessWidget {
  const FoodMenuPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(              
                children: [ 
                  Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 1,
                      alignment: Alignment.center,
                     decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/food_menu.png'),
                        fit: BoxFit.fill
                      )
                     ),
                    ),

                    SizedBox(height: 15),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.53,
                      width: MediaQuery.of(context).size.width * 0.65,
                      alignment: Alignment.center,
                     decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/menu.png'),
                        fit: BoxFit.fill
                      )
                     ),
                    ),

                    SizedBox(height: 10),
                                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
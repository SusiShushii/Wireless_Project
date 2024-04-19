import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(              
                children: [   
                     
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25),
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: 
                       Text("What’s On",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontFamily: 'Radley',
                          fontWeight: FontWeight.bold,
                          height: 1,
                          
                        ),
                        ),
                        
                          
                     ),
                   ),
                   SizedBox(height: 20),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: 
                       Text("   A new type of pub & bar that everyone must have never experienced like this before. We have presented it through a modern Thai style. It is that we take everyone who enters the restaurant to get to know the story of Thailand through food, drinks and music that the restaurant has created.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Radley',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          
                        ),
                        ),
                        
                          
                     ),
                   ),
                    
                    SizedBox(height: 10),
                    
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25),
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: 
                       Text("Opening Hours\nMonday - Sunday 7a.m.-12p.m.",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontFamily: 'Radley',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          
                        ),
                        ),
                        
                          
                     ),
                   ),

                    SizedBox(height: 25),

                    Container(
                       height: MediaQuery.of(context).size.height * 0.47,
                      width: MediaQuery.of(context).size.width * 0.75,
                      alignment: Alignment.center,
                     decoration: BoxDecoration(
                      image: DecorationImage(
                        image: 
                        AssetImage('assets/images/about_1.png'),
                        fit: BoxFit.fill
                      )
                     ),
                     
                    ),
                    SizedBox(height: 15),
                   
              
              
                    
              
                    
                    
                    
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



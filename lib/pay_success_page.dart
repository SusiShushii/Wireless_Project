import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/auth_page.dart';

class PaySuccessPage extends StatelessWidget {
  final int tableid;
  const PaySuccessPage({super.key, required this.tableid});
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: () {
          Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => AuthPage()), // Construct PayPage widget
           );
              },
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(              
                children: [ 
                  SizedBox(height: 100),

                  Container(
                      height:  MediaQuery.of(context).size.height * 0.13,
                      width:  MediaQuery.of(context).size.width * 0.18,
                      alignment: Alignment.center,
                     decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/pay_success.png'),
                        fit: BoxFit.fill
                      )
                     ),
                    ),

                    SizedBox(height: 50),

                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Align(
                       alignment: Alignment.center,
                       child: 
                       Text("    Payment\nSuccessfully",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontFamily: 'Radley',
                          fontWeight: FontWeight.bold,
                          height: 1,
                          
                        ),
                        ),
                     ),
                   ),             
                    SizedBox(height: 100),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: 
                       Text(
                        'Table no.$tableid',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),           
                     ),
                   ),

                 
                                 
                    
                    
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



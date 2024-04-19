import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/pay_page.dart'; 


class ReservationPage extends StatefulWidget{
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPage();
}

class _ReservationPage extends State<ReservationPage> {
  final inPartysize = TextEditingController();
  final inDate = TextEditingController();
  final inTime = TextEditingController(); 

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children:  [
                Text('Request a reservation',
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("Select your details and we'll try get the best seats for you",
                    style: 
                    TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                ),
              
              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Party Size',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: MyTextField(
                          controller: inPartysize,
                          hintText: 'Number of members',
                          obscureText: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 10,),              
                    
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date       ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: MyTextField(
                          controller: inDate,
                          hintText: 'DD/MM',
                          obscureText: false,
                                    ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time        ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: MyTextField(
                          controller: inTime,
                          hintText: '20:00',
                          obscureText: false,
                                    ),
                      ),
                    ),
                  ],
                ),
              ),
                    
              const SizedBox(height: 10,),
              
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.black,
                  ))
              ],),
            ),
                     const SizedBox(height: 20,),
                      ClipRRect(
                        
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill
                            (child: Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 21, 21, 255),
                              ),
                            )
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Radley',
                                  color: Colors.white)
                              ),
                              onPressed: (){{Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PayPage(inPartysize: inPartysize.text,inDate: inDate.text,inTime: inTime.text,)), // Construct PayPage widget
                                );
                              }}, child: 
                              const Text("Request Now",
                              style: TextStyle(
                                
                                fontFamily: 'Radley',
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                height: 0,
                                color: Colors.white),))
                          ],
                        ),
                      ),
                  
             
            ],),
          ),
        ),
      ),
    );
  }
}

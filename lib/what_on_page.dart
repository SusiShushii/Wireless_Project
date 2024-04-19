import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/reservation_page.dart';


class WhatonPage extends StatelessWidget {
  const WhatonPage({super.key, });

  
  @override
  Widget build(BuildContext context) {
    
    return 
DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 1,
                       height: MediaQuery.of(context).size.height * 0.18,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/whaton_1.png'),
                          fit: BoxFit.fill
                        )
                       ),
                      ),
                      
                      SizedBox(height: 30),
                  
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                       height: MediaQuery.of(context).size.width * 0.35,
                        alignment: Alignment.center,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/whaton_2.png'),
                          fit: BoxFit.fill
                        )
                       ),
                       
                      ),
                      SizedBox(height: 15),
                      ClipRRect(
                        
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill
                            (child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFF1A1A1A)
                              ),
                            )
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 18),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Radley',
                                  color: Colors.white)
                              ),
                              onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ReservationPage()), // Set index to 1 for ReservationPage
                                  );
                                }, child: 
                              const Text("Book a Table",
                              style: TextStyle(
                                
                                fontFamily: 'Radley',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                height: 0,
                                color: Colors.white),))
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                                
                      Container(
                        margin: EdgeInsets.only(top: 4), // Adjust the space between text and line here
                        height: 2,
                         width: MediaQuery.of(context).size.width * 0.7 , // Adjust the width of the line here
                        color: Colors.black, 
                        // Adjust the color of the line here
                        ),
                       
                      SizedBox(height: 20),
                      Text("Thonglor",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Radley',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),),
                      SizedBox(height: 10),
                      
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



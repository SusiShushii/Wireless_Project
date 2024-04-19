import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/alc_menu_page.dart';
import 'package:flutter_application_1/food_menu_page.dart';
import 'package:flutter_application_1/google_map_page.dart';
//import 'package:flutter_application_1/map_page.dart';
import 'package:flutter_application_1/reservation_page.dart';
import 'package:flutter_application_1/what_on_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget{

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  final pages = [
    WhatonPage(),
    ReservationPage(),
    FoodMenuPage(),
    AlcMenuPage(),
    GoogleMapPage(),
    AboutPage(),
  ];
  void signUserOut(){
    FirebaseAuth.instance .signOut();
  }

  int index = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          actions: [IconButton(
          onPressed: signUserOut, 
          icon: Icon(Icons.logout))
          ],
          ),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          backgroundColor: Color(0xFFf1f5fb),
          selectedIndex: index,
          onDestinationSelected: (index)=>
              setState(()=>this.index=index),
          
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.whatshot_rounded), 
              label: "Whats On",
              ),
            NavigationDestination(
              icon: Icon(Icons.book_rounded), 
              label: "Reserve",
              ),
              NavigationDestination(
              icon: Icon(Icons.restaurant_menu), 
              label: "Food",
              ),
              NavigationDestination(
              icon: Icon(Icons.local_drink), 
              label: "Drink",
              ),
              NavigationDestination(
              icon: Icon(Icons.map_outlined), 
              label: "Location",
              ),
              NavigationDestination(
              icon: Icon(Icons.add_box_sharp), 
              label: "About us",
              ),
          ]
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_page.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/register_page.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});
  
  @override
  State<MainPage> createState() => _MainPageState();
}
 
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(    
      
      body: Container(
      alignment: Alignment.center,
      
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_back.png"),
          fit: BoxFit.fill,
          
            ),
      ),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 200),
      ElevatedButton.icon(
        
        onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context)=> AuthPage(),
          ),
          );
        }, 
        icon: Icon(Icons.message), 
        label: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Login", 
          style: TextStyle(fontSize: 16),
          ),
          
        ),
        style: ElevatedButton.styleFrom(
        
          minimumSize: Size(200, 60),
        ),
            ),
      SizedBox(height: 50),
      
      
        ],
      ),

      ),
      
         
    );
  }
}


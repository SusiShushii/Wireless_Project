import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/food_menu_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/pay_success_page.dart';


class PayPage extends StatefulWidget {
  
 final String inPartysize; // Define inPartysize as a required parameter
  final String inDate; // Define inDate as a required parameter
  final String inTime; // Define inTime as a required parameter

  const PayPage({super.key, required this.inPartysize, required this.inDate, required this.inTime});

  @override
  State<PayPage> createState() => _PayPageState();
  
}

class _PayPageState extends State<PayPage> {

  var collection = FirebaseFirestore.instance.collection("tables");
  
  Future<int> getNextTableId() async {
    QuerySnapshot snapshot = await collection.get();
    int count = snapshot.size; 
    return count; 
  }
  void insertTable () async{
    
    showDialog(
      context: context, 
      builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
    );
    try{
      int nextId = await getNextTableId()+1;
      await collection.add({
        'tableid': nextId,
        'partysize': widget.inPartysize,
        'date': widget.inDate,
        'time': widget.inTime
      });
      Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=> PaySuccessPage(tableid: nextId)), // Construct PayPage widget
      );
    } on FirebaseException catch (e){
      Navigator.pop(context);
      if(e.code.length>1){
        showErrorMessage("Error");
      }
    }
  }
  void showErrorMessage(String message){
        showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              backgroundColor: Colors.deepPurple,
              title: Center(
                child: Text(
                  message,
                  style:  const TextStyle(color: Colors.white),
                ),
              ),
            );
          }
        );
  }

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
          Navigator.pop(context);
                },
              ),
            ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(              
                children: [ 
                  Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                     decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/pay_qr.png'),
                        fit: BoxFit.fill
                      )
                     ),
                    ),
                     SizedBox(height: 20),
                    Text("PromptPay no: 092-432-8888",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Radley',
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                        ),

                    SizedBox(height: 50),
      
                    
                           
                   TextButton(
  style: TextButton.styleFrom(
    padding: const EdgeInsets.all(35),
    textStyle: const TextStyle(
      fontSize: 18,
      fontFamily: 'Radley',
      color: Color.fromARGB(255, 117, 147, 190),
    ),
    backgroundColor: Color.fromARGB(255, 218, 212, 212),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    )
  ),
  onPressed: () {
    insertTable();
  },
  child: const Text(
    "Done Payment",
    style: TextStyle(
      fontFamily: 'Radley',
      fontSize: 25,
      fontWeight: FontWeight.bold,
      height: 0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
  ),
),

                    SizedBox(height: 50),
                    
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



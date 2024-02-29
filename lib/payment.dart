import 'package:flutter/material.dart';

void main() {
  runApp(const CodeApp());
}

class CodeApp extends StatelessWidget {
  const CodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          PayTheBooking(),
        ]),
      ),
    );
  }
}

class PayTheBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 97,
                top: 89,
                child: Container(
                  width: 200,
                  height: 271,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/qr.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 798,
                child: Container(
                  width: 211,
                  height: 39,
                  decoration: BoxDecoration(
                    color: Color(0xE5D4D4D4),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 109,
                top: 371,
                child: Text(
                  'PromptPay no:  xxx-xxx-xxxx',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Rasa',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 436,
                child: Container(
                  width: 296,
                  height: 354,
                  decoration: BoxDecoration(color: Color(0x7FD9D9D9)),
                ),
              ),
              Positioned(
                left: 56,
                top: 439,
                child: Container(
                  width: 277,
                  height: 25,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 161,
                top: 443,
                child: Text(
                  'Preview.png',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Rasa',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 61,
                  height: 48,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 393,
                  height: 48,
                  decoration: BoxDecoration(color: Color(0xFF6167F4)),
                ),
              ),
              Positioned(
                left: 61,
                top: 14,
                child: SizedBox(
                  width: 155,
                  height: 21,
                  child: Text(
                    'Payment medthods',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Rambla',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 114,
                top: 474,
                child: Container(
                  width: 175.38,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/slip.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 400,
                child: SizedBox(
                  width: 164,
                  child: Text(
                    'Attach slip photo:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Rasa',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 160,
                top: 802,
                child: SizedBox(
                  width: 192,
                  height: 31,
                  child: Text(
                    'Done payment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Rasa',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 17,
                child: Container(
                  width: 28,
                  height: 16,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/28x16"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
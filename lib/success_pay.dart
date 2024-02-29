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
          PaymentSuccessfully(),
        ]),
      ),
    );
  }
}

class PaymentSuccessfully extends StatelessWidget {
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
                left: 146,
                top: 205,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/correct.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 377,
                child: SizedBox(
                  width: 393,
                  child: Text(
                    'Payment  \nsuccessfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Rasa',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 517,
                child: Text(
                  'Table no.14',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Rasa',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 795,
                child: Container(
                  width: 61,
                  height: 48,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 17,
                top: 819,
                child: Container(
                  width: 39,
                  height: 16,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/arrow.png"),
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
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
          Reservation(),
        ]),
      ),
    );
  }
}

class Reservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 6,
                top: 87,
                child: Container(
                  width: 381,
                  height: 43,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/reservation_1.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 206,
                child: Text(
                  'Party size',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poly',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 278,
                child: Text(
                  'Date',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poly',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 346,
                child: Text(
                  'Time',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poly',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 205,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 92,
                    height: 27,
                    decoration: BoxDecoration(color: Color(0xFF7B7474)),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 345,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 92,
                    height: 27,
                    decoration: BoxDecoration(color: Color(0xFF7B7474)),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 278,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 92,
                    height: 27,
                    decoration: BoxDecoration(color: Color(0xFF7B7474)),
                  ),
                ),
              ),
              Positioned(
                left: 155,
                top: 279,
                child: Text(
                  '24/01/2024',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Amiri',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 176,
                top: 347,
                child: Text(
                  '20 : 00',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Amiri',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 167,
                top: 207,
                child: SizedBox(
                  width: 66,
                  child: Text(
                    '2 guests',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Amiri',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 425.98,
                child: Container(
                  width: 371,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 607,
                child: Text(
                  'Request Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poly',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 43,
                child: SizedBox(
                  width: 64,
                  height: 18,
                  child: Text(
                    'What’s On',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Radley',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 113,
                top: 43,
                child: Text(
                  'Food & Drink',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Radley',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 234,
                top: 42,
                child: SizedBox(
                  width: 44,
                  height: 16,
                  child: Text(
                    'Alcohol',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Radley',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 326,
                top: 43,
                child: SizedBox(
                  width: 54,
                  height: 15,
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Radley',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 6,
                top: 70,
                child: Container(
                  width: 373,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 6,
                top: 30,
                child: Container(
                  width: 371,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 138,
                child: Container(
                  width: 354,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/reservation_2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 811,
                child: Container(
                  width: 110,
                  height: 43,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 16,
                top: 825,
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
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
          About(),
        ]),
      ),
    );
  }
}

class About extends StatelessWidget {
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
                left: 16,
                top: 179,
                child: SizedBox(
                  width: 359,
                  height: 123,
                  child: Text(
                    'a new type of pub & bar that everyone must have never experienced like this before. We have presented it through a modern Thai style. It is that we take everyone who enters the restaurant to get to know the story of Thailand through food, drinks and music that the restaurant has created',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8999999761581421),
                      fontSize: 15,
                      fontFamily: 'Roboto Condensed',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 128,
                child: SizedBox(
                  width: 250,
                  height: 46,
                  child: Text(
                    'What’s On',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Rosario',
                      fontWeight: FontWeight.w400,
                      height: 0.03,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 391,
                child: Container(
                  width: 353,
                  height: 422,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/about.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 302,
                child: SizedBox(
                  width: 323,
                  height: 54,
                  child: Text(
                    '\nOpening Hours\nMonday - Sunday 7a.m.-12p.m.',
                    style: TextStyle(
                      color: Color(0xFF0E17DE),
                      fontSize: 16,
                      fontFamily: 'Rosario',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 47.08,
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
                left: 119,
                top: 48,
                child: Text(
                  'Food  & Drink',
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
                left: 302,
                top: 48,
                child: SizedBox(
                  width: 73,
                  height: 16,
                  child: Text(
                    'Book a Table',
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
                left: 225,
                top: 48,
                child: SizedBox(
                  width: 54,
                  height: 15,
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
                left: 9,
                top: 79,
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
                left: 9,
                top: 33.08,
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
                left: 13,
                top: 813,
                child: Container(
                  width: 73,
                  height: 35,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 30,
                top: 826,
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
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
          FoodDrinkMenu(),
        ]),
      ),
    );
  }
}

class FoodDrinkMenu extends StatelessWidget {
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
                left: 15,
                top: 211,
                child: Container(
                  width: 364,
                  height: 517,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/food_menu.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 393,
                  height: 138,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("images/food_back.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 35,
                child: Container(
                  width: 372,
                  height: 37,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 25,
                        top: 12,
                        child: SizedBox(
                          width: 64,
                          height: 16,
                          child: Text(
                            'What’s On',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Radley',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 12,
                        child: Text(
                          'Alcohol',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Radley',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 196,
                        top: 12,
                        child: SizedBox(
                          width: 73,
                          height: 14,
                          child: Text(
                            'Book a Table',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Radley',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 301,
                        top: 12,
                        child: SizedBox(
                          width: 54,
                          height: 13,
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Radley',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 37,
                        child: Container(
                          width: 372,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 372,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 808,
                child: Container(
                  width: 73,
                  height: 35,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 23,
                top: 823,
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
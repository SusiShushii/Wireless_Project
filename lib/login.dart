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
          Login(),
        ]),
      ),
    );
  }
}

class Login extends StatelessWidget {
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
                left: 2,
                top: 804,
                child: Container(
                  width: 110,
                  height: 43,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 2,
                top: 804,
                child: Container(
                  width: 110,
                  height: 43,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 15,
                top: 199,
                child: Text(
                  'Username:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Rasa',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              
              Positioned(
                left: 15,
                top: 293,
                child: Text(
                  'Password:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Rasa',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 141,
                top: 43,
                child: SizedBox(
                  width: 110,
                  height: 54,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontFamily: 'Rasa',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              
              Positioned(
                left: 151,
                top: 194,
                child: Container(
                  width: 203,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.800000011920929),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 288,
                child: Container(
                  width: 203,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.800000011920929),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 96,
                top: 642,
                child: Container(
                  width: 200,
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.8999999761581421),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 658,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 818,
                 child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
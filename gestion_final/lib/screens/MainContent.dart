import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double containerWidth = size.width * 1.3;
    double containerHeight = size.height * 0.25;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 44, 58, 106),
              Color.fromARGB(255, 12, 13, 52),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: 16),
              Center(
                child: Image.asset(
                  'assets/img/zero_waste.png',
                  width: size.width * 0.4,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: size.width * 0.8,
                //height: size.height * 0.14,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xFF0F1B41),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 6),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mis ecopuntos:",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "450536",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width * 1.3,
                //height: size.height * 0.31,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xFF0F1B41),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 6),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mi reciclaje",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Color(0xFF0F1B41),
                          child: Image.asset(
                            'assets/img/barras.png',
                            width: containerWidth * 0.33,
                            height: containerHeight * 0.9,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              color: Color(0xFF0F1B41),
                              child: Image.asset(
                                'assets/img/circulo.png',
                                width: containerWidth * 0.3,
                                height: containerHeight * 0.8,
                              ),
                            ),
                            Text(
                              "3.5",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * 1.3,
                //height: size.height * 0.24,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xFF0F1B41),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 6),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ultimos Scaneos:",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/img/Artboard 1 copy 3.png',
                          width: containerWidth * 0.2,
                          height: containerHeight * 0.5,
                        ),
                        SizedBox(width: 16.0),
                        Image.asset(
                          'assets/img/Artboard 1 copy 4.png',
                          width: containerWidth * 0.2,
                          height: containerHeight * 0.5,
                        ),
                        SizedBox(width: 16.0),
                        Image.asset(
                          'assets/img/Artboard 1 copy 5.png',
                          width: containerWidth * 0.2,
                          height: containerHeight * 0.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

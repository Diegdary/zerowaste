import 'package:flutter/material.dart';

class Result_picture extends StatelessWidget {
  const Result_picture({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double containerWidth = size.width * 1.3;
    double containerHeight = size.height * 0.25;

    return Container(
      child: Center(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Tipo de desecho detectado:",
                    style: TextStyle(color: Color(0xFF2596BE), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Text(
                    "    Vidrio-Residuos aprovechables",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Puedes reutilizarlo?",
                    style: TextStyle(color: Color(0xFF2596BE), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Text(
                    "    Si",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Contedendor:",
                    style: TextStyle(color: Color(0xFF2596BE), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Text(
                    "    Contenedor verde",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  'assets/img/Artboard 1 copy 6.png',
                  width: containerWidth * 0.4,
                  height: containerHeight * 0.8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

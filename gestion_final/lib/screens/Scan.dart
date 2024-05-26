import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Scancam extends StatefulWidget {
  const Scancam({super.key});

  @override
  State<Scancam> createState() => _ScancamState();
}

class _ScancamState extends State<Scancam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Camara")),
            ElevatedButton(
                onPressed: () {
                 
                },
                child: Text("Galería"))
          ],
        ),
      ),
    );
  }

}

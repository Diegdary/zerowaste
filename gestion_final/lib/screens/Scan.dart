import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gestion_final/screens/result_picture.dart';

class Scancam extends StatefulWidget {
  const Scancam({super.key});

  @override
  State<Scancam> createState() => _ScancamState();
}

class _ScancamState extends State<Scancam> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Expanded(
            //color: Colors.red,
            //height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      PickImageCamera();
                    },
                    child: Text("Camara")),
                ElevatedButton(
                    onPressed: () {
                      PickImageGallery();
                    },
                    child: Text("Galería")),
                _selectedImage != null
                    ? Column(
                        children: [
                          Image.file(_selectedImage!),
                          Result_picture()
                        ],
                      )
                    : Column(
                        children: [
                          const Text(
                            "Selecciona una imagen",
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future PickImageGallery() async {
    print("hola");
    final returnedimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _selectedImage = File(returnedimage!.path);
    });
  }

  Future PickImageCamera() async {
    print("hola");
    final returnedimage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      _selectedImage = File(returnedimage!.path);
    });
  }
}

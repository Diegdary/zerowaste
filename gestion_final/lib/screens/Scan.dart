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
            ElevatedButton(
                onPressed: () {
<<<<<<< HEAD
                 
=======
                  PickImageCamera();
                },
                child: Text("Camara")),
            ElevatedButton(
                onPressed: () {
                  PickImageGallery();
>>>>>>> 7ef39a50a5ea683c9aedb3ab5eb5c9194e385860
                },
                child: Text("Galería"))
          ],
        ),
      ),
    );
  }

<<<<<<< HEAD
=======
  Future PickImageGallery() async {
    print("hola");
    final returnedimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedimage != null) {
      print("hay imagen!");
    }
  }

  Future PickImageCamera() async {
    print("hola");
    final returnedimage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedimage != null) {
      print("hay imagen!");
    }
  }
>>>>>>> 7ef39a50a5ea683c9aedb3ab5eb5c9194e385860
}

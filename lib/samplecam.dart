import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'postform.dart';

class Imagepick extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Imagepick> {
  File? _selectedImage; // IMAGE STORED HERE

  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
      // Navigate to Postform screen
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Postform(imageFile: _selectedImage),
        ),
      );
    }
  }

  Future<void> _takePicture() async {
    final imagePicker = ImagePicker();
    final takenImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (takenImage != null) {
      setState(() {
        _selectedImage = File(takenImage.path);
      });
      // Navigate to Postform screen
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Postform(imageFile: _selectedImage),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Request'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: SvgPicture.asset(
                'assets/pic.svg',
                height: 175,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: _pickImage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                fixedSize: const Size(200, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Pick from Gallery',
                style: TextStyle(fontSize: 18, letterSpacing: 1.1),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _takePicture,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                fixedSize: const Size(200, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Take Picture',
                style: TextStyle(fontSize: 18, letterSpacing: 1.1),
              ),
            ),
            const SizedBox(height: 20),
            // if (_selectedImage != null)
              // Image.file(
              //   _selectedImage!,
              //   width: 200,
              //   height: 200,
              // ),
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Postform()));
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

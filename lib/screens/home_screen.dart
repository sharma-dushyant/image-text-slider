import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_text_slider/screens/edit_image_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () async {
              XFile? file =
                  await ImagePicker().pickImage(source: ImageSource.gallery);
              if (file != null) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        EditImageScreen(selectedImage: file.path)));
              }
            },
            icon: const Icon(Icons.upload_file)),
      ),
    );
  }
}
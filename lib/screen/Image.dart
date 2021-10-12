import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePro extends StatefulWidget {
  const ImagePro({Key? key}) : super(key: key);

  @override
  _ImageProState createState() => _ImageProState();
}

class _ImageProState extends State<ImagePro> {
  dynamic file;

  Future<void> openCamera() async {
    var picker = ImagePicker();
    var photo = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      file = File(photo!.path);
    });
    print(file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: file == null ? Text('Select Image',style: TextStyle(fontSize: 24),) : Image.file(file),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('open camera');
          openCamera();
        },
        child: Icon(Icons.camera),
      ),
    );
  }
}

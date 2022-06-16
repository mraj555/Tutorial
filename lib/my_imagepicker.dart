import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class MyMediaPicker extends StatefulWidget {
  const MyMediaPicker({Key? key}) : super(key: key);

  @override
  State<MyMediaPicker> createState() => _MyMediaPickerState();
}

class _MyMediaPickerState extends State<MyMediaPicker> {
  ImagePicker imagePicker = ImagePicker();
  var mediaFile;

  List mediaFiles = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Media File Picker'),
          backgroundColor: Colors.black,
          titleTextStyle: GoogleFonts.play(
            fontSize: 20,
            color: Colors.white,
          ),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ButtonBar(
              children: [
                IconButton(
                  onPressed: () async {
                    await _pickImageFromCamera();
                  },
                  icon: Icon(Icons.camera),
                ),
                IconButton(
                  onPressed: () async {
                    await _all();
                    print(mediaFiles);
                  },
                  icon: Icon(Icons.image),
                ),
              ],
            ),
            mediaFiles.isEmpty
                ? Placeholder()
                : Container(
                    height: 500,
                    width: 300,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(
                        mediaFiles.length,
                        (index) => Container(
                          color: Colors.black,
                          margin: EdgeInsets.all(5),
                          child: Image.file(
                            mediaFiles[index],
                            filterQuality: FilterQuality.none,
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  _pickImageFromCamera() async {
    var camFile = await imagePicker.pickImage(source: ImageSource.camera);
    setState(
      () {
        mediaFile = File(camFile!.path);
      },
    );
  }

  _all() async {
    var file = await imagePicker.pickMultiImage(maxHeight: 100, maxWidth: 100);

    setState(() {
      mediaFiles = file!.map((e) => File(e.path)).toList();
      print(mediaFiles);
    });
  }

  _pickImageFromGallery() async {
    var galleryFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(
      () {
        mediaFile = File(galleryFile!.path);
      },
    );
  }
}

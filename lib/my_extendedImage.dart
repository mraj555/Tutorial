import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

class MyExtendedImage extends StatefulWidget {
  const MyExtendedImage({Key? key}) : super(key: key);

  @override
  State<MyExtendedImage> createState() => _MyExtendedImageState();
}

class _MyExtendedImageState extends State<MyExtendedImage> {
  var _key = GlobalKey<ExtendedImageEditorState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 15,
          title: Text('Extended Image'),
          titleTextStyle: GoogleFonts.inter(fontSize: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          centerTitle: true,
        ),
        body: ExtendedImage.network(
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
          fit: BoxFit.contain,
          cacheRawData: true,
          extendedImageEditorKey: _key,
          mode: ExtendedImageMode.editor,
          initEditorConfigHandler: (state) {
            return EditorConfig(
              cropRectPadding: EdgeInsets.all(10),
              hitTestSize: 20,
              maxScale: 8,
            );
          },
        ),
        bottomNavigationBar: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ButtonBar(
            children: [
              ElevatedButton(
                onPressed: () {
                  _save();
                  },
                child: Text('SAVE'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  _key.currentState!.rotate(right: true);
                },
                icon: Icon(Icons.rotate_right),
                label: Text('Rotate Right'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  _key.currentState!.rotate(right: false);
                },
                icon: Icon(Icons.rotate_left),
                label: Text('Rotate Left'),
              ),
              ElevatedButton(
                onPressed: () {
                  _key.currentState!.reset();
                },
                child: Text('CANCEL'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _save() async {
    final result = await ImageGallerySaver.saveImage(
      Uint8List.fromList(_key.currentState!.rawImageData),
        quality: 100,
        name: "hello");
    print(result);
  }
}

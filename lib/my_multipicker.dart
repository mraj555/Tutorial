import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class MyMultiPicker extends StatefulWidget {
  const MyMultiPicker({Key? key}) : super(key: key);

  @override
  State<MyMultiPicker> createState() => _MyMultiPickerState();
}

class _MyMultiPickerState extends State<MyMultiPicker>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  bool isDark = false;

  ImagePicker imagePicker = ImagePicker();
  var mediaFile;

  List mediaFiles = [];

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
        ),
        appBarTheme: AppBarTheme(backgroundColor: Colors.lightGreen),
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black
        ),
        scaffoldBackgroundColor: Colors.grey.shade900,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.tealAccent,
          foregroundColor: Colors.black,
        ),
      ),
      themeMode: isDark == true ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 15,
          titleTextStyle: GoogleFonts.roboto(fontSize: 20),
          title: Text('Flow And File Picker'),
          actions: [
            isDark
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isDark = false;
                      });
                    },
                    icon: Icon(
                      Icons.lightbulb,
                      color: Colors.white,
                    ),
                  )
                : IconButton(
                    onPressed: () {
                      setState(
                        () {
                          isDark = true;
                        },
                      );
                    },
                    icon: Icon(Icons.dark_mode),
                  ),
          ],
        ),
        body: mediaFiles.isEmpty
            ? Center(
                child: mediaFile == null
                    ? Lottie.network(
                        'https://assets4.lottiefiles.com/packages/lf20_cj0prrgw.json')
                    : Container(
                        color: Colors.black,
                        height: 400,
                        width: 300,
                        child: Image.file(mediaFile),
                      ),
              )
            : GridView.count(
                crossAxisCount: 5,
                childAspectRatio: 0.9,
                children: List.generate(
                  mediaFiles.length,
                  (index) => Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(3),
                    color: Colors.black,
                    child: Image.file(
                      File(mediaFiles[index]),
                    ),
                  ),
                ),
              ),
        floatingActionButton: Flow(
          delegate: MyFlowDelegate(controller: controller),
          children: [
            FloatingActionButton(
              elevation: 0,
              onPressed: () async {
                await _pickfromCamera();
                controller.reverse();
              },
              child: Icon(Icons.camera),
            ),
            FloatingActionButton(
              elevation: 0,
              onPressed: () async {
                await _pickfromGallery();
                controller.reverse();
              },
              child: Icon(Icons.image),
            ),
            FloatingActionButton(
              elevation: 0,
              onPressed: () async {
                await _videoPickfromGallery();
                controller.reverse();
              },
              child: Icon(Icons.video_library),
            ),
            FloatingActionButton(
              elevation: 0,
              onPressed: () async {
                await _multipickfromGallery();
                controller.reverse();
              },
              child: Icon(Icons.select_all),
            ),
            FloatingActionButton(
              elevation: 0,
              onPressed: () {
                if (controller.status == AnimationStatus.completed) {
                  controller.reverse();
                } else {
                  controller.forward();
                }
              },
              child: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _pickfromCamera() async {
    final cam = await imagePicker.pickImage(source: ImageSource.camera);

    setState(
      () {
        mediaFile = File(cam!.path);
      },
    );
  }

  _pickfromGallery() async {
    final cam = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(
      () {
        mediaFile = File(cam!.path);
      },
    );
  }

  _videoPickfromGallery() async {
    final cam = await imagePicker.pickVideo(source: ImageSource.gallery);

    setState(
      () {
        mediaFile = File(cam!.path);
      },
    );
  }

  _multipickfromGallery() async {
    final cam = await imagePicker.pickMultiImage();

    setState(
      () {
        mediaFiles = cam!.map((e) => e.path).toList();
      },
    );
  }
}

class MyFlowDelegate extends FlowDelegate {
  final Animation<double> controller;

  MyFlowDelegate({required this.controller}) : super(repaint: controller);

  var buttonSize = 100;

  @override
  void paintChildren(FlowPaintingContext context) {
    final size = context.size;
    final xStart = size.width - buttonSize;
    final yStart = size.height - buttonSize;

    final n = context.childCount;
    for (int i = 0; i < n; i++) {
      final isLastItem = i == context.childCount - 1;
      final setValue = (value) => isLastItem ? 0.0 : value;
      final radius = 180 * controller.value;

      final theta = i * pi * 0.5 / (n - 2);

      final x = xStart - setValue(radius * cos(theta));
      final y = yStart - setValue(radius * sin(theta));

      context.paintChild(
        i,
        transform: Matrix4.identity()
          ..translate(x, y, 0)
          ..translate(buttonSize / 2, buttonSize / 2)
          ..rotateZ(180 * pi / 180)
          ..translate(-buttonSize / 2, -buttonSize / 2),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

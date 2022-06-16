import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInterActViewer extends StatefulWidget {
  const MyInterActViewer({Key? key}) : super(key: key);

  @override
  State<MyInterActViewer> createState() => _MyInterActViewerState();
}

class _MyInterActViewerState extends State<MyInterActViewer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: GoogleFonts.inter(
            fontSize: 20,
            color: Colors.white,
          ),
          title: Text('InterAct Viewer'),
          centerTitle: true,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 15,
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 500,
            color: Colors.yellow,
            child: Row(
              children: [
                InteractiveViewer(
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                InteractiveViewer(
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Colors.lightGreen,
                  ),
                ),
                InteractiveViewer(
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

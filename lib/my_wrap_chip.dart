import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWrap extends StatefulWidget {
  const MyWrap({Key? key}) : super(key: key);

  @override
  _MyWrapState createState() => _MyWrapState();
}

class _MyWrapState extends State<MyWrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        titleTextStyle: GoogleFonts.halant(fontSize: 20),
        centerTitle: true,
        title: Text('Wrap & Chip'),
        elevation: 15,
      ),
      body: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
          ),
          Chip(
            label: Text('Google'),
            elevation: 15,
            backgroundColor: Colors.black26,
          ),
        ],
      ),
    );
  }
}

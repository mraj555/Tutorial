import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOpacity extends StatefulWidget {
  const MyOpacity({Key? key}) : super(key: key);

  @override
  _MyOpacityState createState() => _MyOpacityState();
}

class _MyOpacityState extends State<MyOpacity> {
  var _opacity1 = 1.0, _opacity2 = 1.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Opacity'),
          titleTextStyle: GoogleFonts.alegreya(
            fontSize: 20,
          ),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _opacity1 = 1.0 - _opacity1;
                    },
                  );
                },
                child: Opacity(
                  opacity: _opacity1,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                        () {
                      _opacity2 = 1.0 - _opacity2;
                    },
                  );
                },
                child: AnimatedOpacity(
                  opacity: _opacity2,
                  duration: Duration(seconds: 5),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

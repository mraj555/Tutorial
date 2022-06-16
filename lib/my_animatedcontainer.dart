import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.blue;
  double _radius = 10;

  Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          titleTextStyle: GoogleFonts.heebo(fontSize: 20),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedContainer(
                curve: Curves.slowMiddle,
                duration: Duration(seconds: 2),
                child: Image.asset('assets/logo.png'),
                alignment: Alignment.center,
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(_radius),
                ),
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                        () {
                      _width = _random.nextInt(200).toDouble();
                      _height = _random.nextInt(200).toDouble();
                      _radius = _random.nextInt(100).toDouble();
                      _color = Color.fromRGBO(
                        _random.nextInt(256), _random.nextInt(256),
                        _random.nextInt(256), 1,);
                    },
                  );
                },
                child: Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _slide = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 15,
          title: Text('Slider'),
          centerTitle: true,
          backgroundColor: Colors.black,
          titleTextStyle: GoogleFonts.openSans(fontSize: 20),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SliderTheme(
              data: SliderThemeData(thumbShape: SliderComponentShape.noThumb
              ),
              child: Slider(
                value: _slide,
                activeColor: Colors.green,
                max: 100.0,
                min: 0.0,
                label: _slide.round().toString(),
                inactiveColor: Colors.red,
                thumbColor: Colors.yellow,
                onChanged: (val) {
                  setState(
                    () {
                      _slide = val;
                    },
                  );
                },
              ),
            ),
            CircularProgressIndicator(),
            LinearProgressIndicator(),
            RefreshProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

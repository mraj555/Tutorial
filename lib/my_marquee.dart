import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MyMarquee extends StatefulWidget {
  const MyMarquee({Key? key}) : super(key: key);

  @override
  State<MyMarquee> createState() => _MyMarqueeState();
}

class _MyMarqueeState extends State<MyMarquee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Marquee(
            text: 'Hello Flutter, SubScribe My Channel And Like Now.',
            blankSpace: 350,
            showFadingOnlyWhenScrolling: true,
          ),
        ),
      ),
    );
  }
}

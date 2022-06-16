import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatefulWidget {
  const MyAnimatedWidget({Key? key}) : super(key: key);

  @override
  State<MyAnimatedWidget> createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  CurvedAnimation? _curvedAnimation;
  Animation<double>? sizeAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _curvedAnimation =
        CurvedAnimation(parent: _controller!, curve: Curves.bounceOut);
    sizeAnimation =
        Tween<double>(begin: 100, end: 200).animate(_curvedAnimation!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Widget'),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedLogo(animation: sizeAnimation),
              ElevatedButton(
                onPressed: () => _controller!.forward(),
                child: Text('Forward'),
              ),
              ElevatedButton(
                onPressed: () => _controller!.reverse(),
                child: Text('Reverse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({Animation<double>? animation}) : super(listenable: animation!);

  @override
  Widget build(BuildContext context) {
    Animation<double>? animation = listenable as Animation<double>?;
    return Container(
      child: FlutterLogo(),
      padding: EdgeInsets.all(10),
      color: Colors.lightGreen,
      width: animation!.value,
      height: animation.value,
    );
  }
}

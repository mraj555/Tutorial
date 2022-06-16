import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLowLevelAnimation extends StatefulWidget {
  const MyLowLevelAnimation({Key? key}) : super(key: key);

  @override
  State<MyLowLevelAnimation> createState() => _MyLowLevelAnimationState();
}

class _MyLowLevelAnimationState extends State<MyLowLevelAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _curvedAnimation;
  late Animation<double> _sizeAnimation;

  // late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );

    _sizeAnimation =
        Tween<double>(begin: 150, end: 200).animate(_curvedAnimation);
    // _colorAnimation =
    //     ColorTween(begin: Colors.transparent, end: Colors.lightGreen)
    //         .animate(_curvedAnimation);

    _controller.addListener(() {
      setState(() {});
    });

    // _controller.addStatusListener(
    //   (status) {
    //     if (status == AnimationStatus.completed) {
    //       _controller.reverse();
    //     } else if (status == AnimationStatus.dismissed) {
    //       _controller.forward();
    //     }
    //   },
    // );
    // _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Low Level Animation'),
          titleTextStyle: GoogleFonts.archivoBlack(fontSize: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 15,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                width: _sizeAnimation.value,
                // height: _sizeAnimation.value,
                color: Colors.green,
                constraints: BoxConstraints(maxWidth: 200),
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.lightbulb),
                    label: Text(
                      'Learn How To Download Video and Audio',
                      style: GoogleFonts.inter(color: Colors.white),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.green.withOpacity(0.5);
                      }
                    },
                  ),
                ),
                onPressed: _controller.isCompleted
                    ? null
                    : () {
                        _controller.forward();
                      },
                child: Text('Forward'),
              ),
              ElevatedButton(
                onPressed: _controller.isDismissed
                    ? null
                    : () {
                        _controller.reverse();
                      },
                child: Text('Reverse'),
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.addStatusListener(
                    (status) {
                      if (status == AnimationStatus.completed) {
                        _controller.reverse();
                      } else if (status == AnimationStatus.dismissed) {
                        _controller.forward();
                      }
                    },
                  );
                  _controller.forward();
                },
                child: Text('Looping'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

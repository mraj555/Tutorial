import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMediaQuery extends StatefulWidget {
  const MyMediaQuery({Key? key}) : super(key: key);

  @override
  State<MyMediaQuery> createState() => _MyMediaQueryState();
}

class _MyMediaQueryState extends State<MyMediaQuery> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                width: width / 2,
                height: height / 5,
              ),
              SizedBox(
                height: height / 2,
              ),
              Container(
                color: Colors.red,
                width: width / 2,
                height: height / 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

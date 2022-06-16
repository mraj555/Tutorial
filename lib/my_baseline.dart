import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBaseline extends StatelessWidget {
  const MyBaseline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Baseline'),
          centerTitle: true,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          titleTextStyle: GoogleFonts.share(fontSize: 20),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                colors: [Colors.green, Colors.lightGreen],
              ),
            ),
            height: 200,
            width: 200,
            child: Baseline(
              baseline: 310,
              baselineType: TextBaseline.alphabetic,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

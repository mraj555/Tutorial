import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFutureBuilder extends StatefulWidget {
  const MyFutureBuilder({Key? key}) : super(key: key);

  @override
  _MyFutureBuilderState createState() => _MyFutureBuilderState();
}

class _MyFutureBuilderState extends State<MyFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future Builder'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: Colors.black,
          elevation: 15,
          titleTextStyle: GoogleFonts.share(fontSize: 20),
          centerTitle: true,
        ),
        body: Center(
          child: FutureBuilder<ByteData>(
            future: getData(),
            builder: (BuildContext context,AsyncSnapshot<ByteData> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   '${snapshot.data}',
                    //   style: GoogleFonts.notoSerif(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    Image.memory(snapshot.data!.buffer.asUint8List()),
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 100,
                    )
                  ],
                );
              } else {
                return CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.yellow,
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Future<ByteData> getData() async {
    await Future.delayed(
      Duration(seconds: 5),
    );
    // return 'Data Loaded Succesfully...';
    return rootBundle.load("assets/India.jpg");
  }
}

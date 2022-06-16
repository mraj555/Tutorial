import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard2 extends StatefulWidget {
  const MyCard2({Key? key}) : super(key: key);

  @override
  _MyCard2State createState() => _MyCard2State();
}

class _MyCard2State extends State<MyCard2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
              Card(
                // color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
                shadowColor: Colors.black,
                child: Container(
                  height: 130,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.blue,
                    // highlightColor: Colors.green,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(20),
                      height: 100,
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.network(
                                'https://www.reliancedigital.in/medias/Apple-iPhone-13-Mini-Smartphones-491997714-i-2-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w5MjE2MnxpbWFnZS9qcGVnfGltYWdlcy9oYWUvaDIyLzk2MzczMTY0NjA1NzQuanBnfGE2YTRlZjc2YjFiNTc2YjI2OGRkOGM5OTVlOTE4ODU3NDg3ZmMwZDE3OWY0OWUwOTUwOTQzZDU0MjU2MjQxNTA'),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          Text(
                            'Apple iPhone 13 Mini 128 GB, \nMidnight (Black)',
                            style: GoogleFonts.amiko(),
                          )
                        ],
                      ),
                    ),
                  ),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  // color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

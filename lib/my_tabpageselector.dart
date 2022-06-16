import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabPageSelector extends StatefulWidget {
  const MyTabPageSelector({Key? key}) : super(key: key);

  @override
  _MyTabPageSelectorState createState() => _MyTabPageSelectorState();
}

class _MyTabPageSelectorState extends State<MyTabPageSelector> {
  var _icons = [
    Icon(Icons.home),
    Icon(Icons.video_library_outlined),
    Icon(Icons.camera_alt_rounded),
    Icon(Icons.favorite_border),
    Icon(Icons.account_circle),
  ];

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
          backgroundColor: Colors.black,
          title: Text('Tab Page Selector'),
          centerTitle: true,
          titleTextStyle: GoogleFonts.aladin(fontSize: 20),
          elevation: 15,
        ),
        body: DefaultTabController(
          length: _icons.length,
          child: Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Expanded(
                    child: IconTheme(
                        data: IconThemeData(
                          size: 150,
                          color: Colors.green,
                        ),
                        child: TabBarView(children: _icons)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabPageSelector(
                        selectedColor: Colors.green,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          TabController? _controller =
                              DefaultTabController.of(context);
                          _controller!.animateTo(_icons.length - 1);
                        },
                        child: Text('SKIP'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

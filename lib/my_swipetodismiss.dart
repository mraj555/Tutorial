import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySwipe extends StatefulWidget {
  const MySwipe({Key? key}) : super(key: key);

  @override
  _MySwipeState createState() => _MySwipeState();
}

class _MySwipeState extends State<MySwipe> {
  static var ls = [
    'India',
    'Australia',
    'West Indies',
    'England',
    'Pakistan',
    'Sri Lanka',
    'New Zealand',
    'South Africa'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.black,
        title: Text('Swipe To Dismiss'),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        titleTextStyle: GoogleFonts.gideonRoman(fontSize: 20),
      ),
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(ls[index]),
            child: ListTile(
              title: Text(ls[index]),
            ),
            onDismissed: (dir) {
              setState(
                () {
                  String a = ls.removeAt(index);
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(a),
                      action: SnackBarAction(
                        label: 'UNDO',
                        onPressed: () {
                          setState(
                            () {
                              ls.insert(index, a);
                            },
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            },
            background: Container(
              color: Colors.red,
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline_sharp,
                  color: Colors.white,
                ),
                label: Text(
                  'Delete',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            direction: DismissDirection.endToStart,
          );
        },
      ),
    );
  }
}

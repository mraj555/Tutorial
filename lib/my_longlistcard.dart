import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLongListCard extends StatefulWidget {
  const MyLongListCard({Key? key}) : super(key: key);

  @override
  _MyLongListCardState createState() => _MyLongListCardState();
}

class _MyLongListCardState extends State<MyLongListCard> {
  var ls = List<String>.generate(50, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.dark_mode),
            padding: EdgeInsets.only(right: 10),
            onPressed: () {
              ;
            },
          )
        ],
        title: Text('Long ListView Of Card'),
        centerTitle: true,
        backgroundColor: Colors.black,
        titleTextStyle: GoogleFonts.akayaTelivigala(fontSize: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          return Card(
            shadowColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            margin: EdgeInsets.only(left: 8, right: 8, top: 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              leading: Icon(Icons.chevron_right),
              title: Text(ls[index]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onTap: () {
                showSnk(context, ls[index]);
              },
            ),
          );
        },
      ),
    );
  }

  showSnk(BuildContext context, String data) {
    var snk = SnackBar(
      content: Text(data),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {},
      ),
    );

    // ScaffoldMessenger.of(context).hideCurrentSnackBar(); //For Removing Current SnackBar and Show New SnackBar
    // ScaffoldMessenger.of(context).removeCurrentSnackBar(); //For Removing Current SnackBar and Show New SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snk);
  }
}

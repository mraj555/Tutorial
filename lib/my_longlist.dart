import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLongList extends StatefulWidget {
  const MyLongList({Key? key}) : super(key: key);

  @override
  _MyLongListState createState() => _MyLongListState();
}

class _MyLongListState extends State<MyLongList> {
  var ls = List<String>.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long ListView"),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: GoogleFonts.akayaTelivigala(fontSize: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text(ls[index]),
            onTap: () {
              showSnk(context, ls[index]);
            },
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
        onPressed: () {
        },
      ),
    );

    // ScaffoldMessenger.of(context).hideCurrentSnackBar(); //For Removing Current SnackBar and Show New SnackBar
    // ScaffoldMessenger.of(context).removeCurrentSnackBar(); //For Removing Current SnackBar and Show New SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snk);
  }
}

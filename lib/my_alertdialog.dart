import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Alert Dialog'),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        titleTextStyle: GoogleFonts.allerta(fontSize: 20),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            alert(context);
          },
          style: ElevatedButton.styleFrom(
            elevation: 15,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: Colors.red,
          ),
          child: Text('DELETE'),
        ),
      ),
    );
  }

  alert(BuildContext context) {
    var my_alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.blue, width: 5),
      ),
      elevation: 20,
      title: Text('Delete'),
      content: Text('Are You Sure You Want To Delete?'),
      actions: [
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                margin: EdgeInsets.only(left: 150, right: 150, bottom: 10),
                padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                // margin: EdgeInsets.all(10),
                behavior: SnackBarBehavior.floating,
                content: Text(
                  'OK Pressed',
                ),
                // action: SnackBarAction(
                //   label: 'UNDO',
                //   onPressed: () {},
                // ),
              ),
            );
            Navigator.pop(context, 'OK');
          },
          child: Text(
            'OK',
            style: GoogleFonts.alike(fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Cancel Pressed'),
                // action: SnackBarAction(
                //   label: 'UNDO',
                //   onPressed: () {},
                // ),
              ),
            );
            Navigator.pop(context, 'Cancel');
            // Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: GoogleFonts.alike(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => my_alert);
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool v = false;
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  bool v4 = false;
  bool v5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Check Box',
          style: GoogleFonts.adventPro(fontSize: 20),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        shadowColor: Colors.orange,
        elevation: 15,
      ),
      body: ListView(
        children: [
          Checkbox(
            value: v1,
            onChanged: (val) {
              setState(
                () {
                  v1 = val!;
                },
              );
            },
          ),
          CheckboxListTile(
            value: v,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) {
              setState(
                () {
                  v = val!;
                  v2 = val;
                  v3 = val;
                  v4 = val;
                  v5 = val;
                },
              );
            },
            title: Text('Allow All Notification'),
            activeColor: Colors.red,
            checkColor: Colors.black,
            shape: Border(
              bottom: BorderSide(color: Colors.black),
            ),
          ),
          CheckboxListTile(
            value: v2,
            controlAffinity: ListTileControlAffinity.trailing,
            onChanged: (val) {
              setState(
                () {
                  v2 = val!;
                  if (val == false) {
                    v = false;
                  }
                  if (val == true && v3 == true && v4 == true && v5 == true) {
                    v = true;
                  }
                },
              );
            },
            title: Text('FaceBook'),
            activeColor: Colors.yellow,
          ),
          CheckboxListTile(
            value: v3,
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: (val) {
              setState(
                () {
                  v3 = val!;
                  if (val == false) {
                    v = false;
                  }
                  if (val == true && v2 == true && v4 == true && v5 == true) {
                    v = true;
                  }
                },
              );
            },
            title: Text('Instagram'),
            checkColor: Colors.orange,
          ),
          CheckboxListTile(
            value: v4,
            onChanged: (val) {
              setState(
                () {
                  v4 = val!;
                  if (val == false) {
                    v = false;
                  }
                  if (val == true && v2 == true && v3 == true && v5 == true) {
                    v = true;
                  }
                },
              );
            },
            title: Text('WhatsApp'),
            activeColor: Colors.green,
          ),
          CheckboxListTile(
            value: v5,
            onChanged: (val) {
              setState(
                () {
                  v5 = val!;
                  if (val == false) {
                    v = false;
                  }
                  if (val == true && v2 == true && v3 == true && v4 == true) {
                    v = true;
                  }
                },
              );
            },
            title: Text('Snapchat'),
            checkColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

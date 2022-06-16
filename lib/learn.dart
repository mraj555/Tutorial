import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLearn extends StatefulWidget {
  const MyLearn({Key? key}) : super(key: key);

  @override
  _MyLearnState createState() => _MyLearnState();
}

class _MyLearnState extends State<MyLearn> {
  int groupValue = 0;
  late String gen = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
        titleTextStyle: GoogleFonts.actor(fontSize: 20),
        backgroundColor: Colors.black,
        centerTitle: true,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        elevation: 15,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Radio(
                  value: 1,
                  // toggleable: true,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(
                          () {
                        groupValue = value as int;
                      },
                    );
                  },
                  activeColor: Colors.green,
                  splashRadius: 100),
              Row(
                children: [
                  Container(
                    width: 190,
                    child: RadioListTile(
                      activeColor: Colors.orange,
                      title: Text('Male'),
                      value: 2,
                      secondary: Icon(Icons.male),
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(
                              () {
                            groupValue = value as int;
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 190,
                    child: RadioListTile(
                      secondary: Icon(Icons.female),
                      activeColor: Colors.green,
                      title: Text('Female'),
                      value: 3,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(
                              () {
                            groupValue = value as int;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              Center(
                child: IconButton(
                  icon: Icon(Icons.auto_fix_normal),
                  onPressed: () {
                    MyDialog();
                  },
                ),
              ),
              Container(
                child: gender(gen),
              ),
            ],
          ),
        ),
      ),
    );
  }
  gender(String _gender) {
    Text(_gender.isEmpty ? '' : 'Your Gender is $_gender');
  }
}

class MyDialog extends StatefulWidget {
  const MyDialog({Key? key}) : super(key: key);
  get g => MyLearn();
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  var groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Column(
          children: [
            Row(
              children: [
                Radio(
                  value: 4,
                  activeColor: Colors.green,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                      
                    });
                  },
                ),
                Text('Male'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 5,
                  activeColor: Colors.green,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                ),
                Text('Female'),
              ],
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial/SQLlite%20Database/database_created.dart';
import 'package:tutorial/SQLlite%20Database/my_datatable.dart';

class StudentsData extends StatefulWidget {
  const StudentsData({Key? key}) : super(key: key);

  @override
  State<StudentsData> createState() => _StudentsDataState();
}

class _StudentsDataState extends State<StudentsData> {
  var student_name = TextEditingController();
  var roll_number = TextEditingController();
  var mobile_number = TextEditingController();

  String studentName = '';
  String rollNumber = '';
  String mobileNumber = '';

  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          titleTextStyle: GoogleFonts.manrope(fontSize: 20),
          title: Text('Students Data'),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 15,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 15.0, right: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  focusNode: myFocusNode,
                  autofocus: true,
                  controller: student_name,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter a Students Name',
                    alignLabelWithHint: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Name',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    prefixIcon: Icon(Icons.account_circle),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: roll_number,
                  maxLength: 3,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  decoration: InputDecoration(
                    hintText: 'Enter a Roll No.',
                    alignLabelWithHint: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Roll No.',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    prefixIcon: Icon(Icons.info),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: mobile_number,
                  maxLength: 10,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Enter a Mobile Number',
                    alignLabelWithHint: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Mobile No.',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    prefixIcon: Icon(Icons.call),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        setState(
                          () {
                            studentName = student_name.text;
                            rollNumber = roll_number.text;
                            mobileNumber = mobile_number.text;
                          },
                        );
                        int i = await DatabaseCreated.helper.insert(
                          {
                            DatabaseCreated.student_Name: studentName,
                            DatabaseCreated.roll_Number: int.parse(rollNumber),
                            DatabaseCreated.mobile_Number:
                                int.parse(mobileNumber),
                          },
                        );
                        student_name.clear();
                        roll_number.clear();
                        mobile_number.clear();
                        myFocusNode.requestFocus();
                        print(i);
                      },
                      child: Text('Insert'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        List<Map<String, dynamic>> data =
                            await DatabaseCreated.helper.getAllData();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyDataTable(data: data),
                          ),
                        );
                        print(data);
                      },
                      child: Text('Show Data'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

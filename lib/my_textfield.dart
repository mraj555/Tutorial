import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String name = '';
  String age = '';
  String mobile = '';
  bool password = false;

  String? get _errorText {
    if (mobile.isEmpty) {
      return '';
    } else if (mobile.length > 10) {
      return 'You Entered More Than 10 Digit';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 15,
        shadowColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: Text(
          'My TextField',
          style: GoogleFonts.aclonica(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15, right: 10, left: 10),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                width: 100,
                child: Text(
                  'Name : ',
                  style: GoogleFonts.andada(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: TextField(
                onChanged: (_name) {
                  setState(() {
                    name = _name;
                  });
                },
                decoration: InputDecoration(
                  constraints: BoxConstraints.tightFor(height: 40),
                  hintText: 'Enter Your Full Name',
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
                ),
                style: GoogleFonts.allerta(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 100,
                child: Text(
                  'Age : ',
                  style: GoogleFonts.andada(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: TextField(
                maxLength: 3,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onChanged: (_age) {
                  setState(() {
                    age = _age;
                  });
                },
                decoration: InputDecoration(
                  constraints: BoxConstraints.tightFor(height: 60),
                  hintText: 'Enter Your Age',
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
                ),
                style: GoogleFonts.allerta(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 100,
                child: Text(
                  'Mobile No.: ',
                  style: GoogleFonts.andada(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: TextField(
                // maxLength: 10,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onChanged: (_mobile) {
                  setState(
                    () {
                      mobile = _mobile;
                    },
                  );
                },
                decoration: InputDecoration(
                  // errorText: _errorText,
                  constraints: BoxConstraints.tightFor(height: 60),
                  hintText: 'Enter Your Mobile Number',
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
                ),
                style: GoogleFonts.allerta(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 100,
                child: Text(
                  'Password : ',
                  style: GoogleFonts.andada(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: TextField(
                // maxLength: 10,
                obscureText: !password,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                keyboardType: TextInputType.visiblePassword,

                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                decoration: InputDecoration(

                  // errorText: _errorText,
                  constraints: BoxConstraints.tightFor(height: 60),
                  hintText: 'Password',
                  suffixIcon:IconButton(
                    icon: password
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        password = !password;
                      });
                    },
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
                ),
                style: GoogleFonts.allerta(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Submit'),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  // Text(
                  //   name.isEmpty ? '' : 'My Name is $name',
                  //   style: GoogleFonts.acme(),
                  // ),
                  Text(
                    age.isEmpty ? '' : 'My Age is $age',
                    style: GoogleFonts.acme(),
                  ),
                  Text(
                    mobile.isEmpty ? '' : 'My Mobile No. is $mobile',
                    style: GoogleFonts.acme(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({Key? key}) : super(key: key);

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool pass = false;
  var _key = GlobalKey<FormState>();
  var myController = TextEditingController();
  var mail = '';
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Form Field'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        shadowColor: Colors.blue,
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.black,
        titleTextStyle: GoogleFonts.abhayaLibre(fontSize: 20),
      ),
      body: ListView(
        children: [
          Form(
            key: _key,
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: TextFormField(
                      controller: myController,
                      validator: (email) {
                        if (email!.isEmpty) {
                          return 'Email Can\'t be Empty';
                        } else if (!RegExp(
                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(email)) {
                          return 'Enter a Valid Email';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'Enter Your Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: TextFormField(
                      controller: _controller,
                      obscureText: !pass,
                      onChanged: (password) {
                        setState(() {
                          password = _controller.text;
                        });
                      },
                      validator: (password) {
                        if (password!.isEmpty) {
                          return 'PassWord Can\'t Be Empty';
                        } else if (password.length < 8) {
                          return 'Password Cannot be Less Than 8 Characters';
                        } else if (!RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(password)) {
                          return 'Enter a Valid Password';
                        }
                      },
                      decoration: InputDecoration(
                        helperText:
                            '* Atleat 1 Small and Capital Character \n* Atleast 1 Digit \n*` Atleast 1 Special Character (!@#&*~)',
                        // filled: true,
                        helperStyle: GoogleFonts.allertaStencil(
                          fontSize: 12,
                        ),
                        // fillColor: Colors.amber,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: 'Enter Your Password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.password_outlined),
                        suffixIcon: _controller.text.isEmpty ? null : IconButton(
                          icon: pass
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              pass = !pass;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => Container(
                              height: 800,
                              child: SimpleDialog(
                                alignment: Alignment.center,
                                // children: [],
                                title: Text('Change Password'),
                                titleTextStyle: GoogleFonts.actor(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                children: [
                                  ListTile(
                                    leading: Container(
                                      width: 110,
                                      child: Text(
                                        'Old Password',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    title: TextFormField(
                                      decoration: InputDecoration(
                                        constraints:
                                            BoxConstraints.tightFor(height: 40),
                                        contentPadding:
                                            EdgeInsets.only(left: 5),
                                        hintText: 'Old Password',
                                        hintStyle: TextStyle(fontSize: 11),
                                        border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Container(
                                      width: 110,
                                      child: Text(
                                        'New Password',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    title: TextFormField(
                                      decoration: InputDecoration(
                                        constraints:
                                            BoxConstraints.tightFor(height: 40),
                                        contentPadding:
                                            EdgeInsets.only(left: 5),
                                        hintText: 'New Password',
                                        hintStyle: TextStyle(fontSize: 11),
                                        border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Container(
                                      width: 110,
                                      child: Text(
                                        'Confirm Password',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    title: TextFormField(
                                      decoration: InputDecoration(
                                        constraints:
                                            BoxConstraints.tightFor(height: 40),
                                        contentPadding:
                                            EdgeInsets.only(left: 5),
                                        hintText: 'Confirm Password',
                                        hintStyle: TextStyle(fontSize: 11),
                                        border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      child: Text('Confirm'),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      child: Text('Submit'),
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          setState(() {
                            mail = myController.text;
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    alignment: Alignment.center,
                    child: Text(
                      mail.isEmpty ? '' : 'Your Email is $mail',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.actor(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRichText extends StatefulWidget {
  const MyRichText({Key? key}) : super(key: key);

  @override
  _MyRichTextState createState() => _MyRichTextState();
}

class _MyRichTextState extends State<MyRichText> {
  var a = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'R',
            style: GoogleFonts.pacifico(color: Colors.yellow, fontSize: 40),
            children: [
              TextSpan(
                text: 'ich Text',
                style: GoogleFonts.supermercadoOne(
                    fontSize: 25, color: Colors.white),
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 15,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text.rich(
                  TextSpan(
                    spellOut: true,
                    text: 'i',
                    style: GoogleFonts.vollkorn(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                    children: [
                      TextSpan(
                        text: 'Phone',
                        style: GoogleFonts.redHatDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.red,
                  endIndent: 90,
                  indent: 90,
                  thickness: 2,
                ),
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(
                          () {
                            a = 'Google';
                          },
                        );
                      }
                      ..onSecondaryTap = () {
                        setState(
                          () {
                            a = '';
                          },
                        );
                      },
                    text: 'G',
                    style: GoogleFonts.roboto(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(
                              () {
                                a = 'Google';
                              },
                            );
                          }
                          ..onSecondaryTap = () {
                            setState(
                              () {
                                a = '';
                              },
                            );
                          },
                        text: 'o',
                        style: GoogleFonts.roboto(
                          fontSize: 40,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(
                              () {
                                a = 'Google';
                              },
                            );
                          }
                          ..onSecondaryTap = () {
                            setState(
                              () {
                                a = '';
                              },
                            );
                          },
                        text: 'o',
                        style: GoogleFonts.roboto(
                          fontSize: 40,
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(
                              () {
                                a = 'Google';
                              },
                            );
                          }
                          ..onSecondaryTap = () {
                            setState(
                              () {
                                a = '';
                              },
                            );
                          },
                        text: 'g',
                        style: GoogleFonts.roboto(
                          fontSize: 40,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(
                              () {
                                a = 'Google';
                              },
                            );
                          }
                          ..onSecondaryTap = () {
                            setState(
                              () {
                                a = '';
                              },
                            );
                          },
                        text: 'l',
                        style: GoogleFonts.roboto(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(
                              () {
                                a = 'Google';
                              },
                            );
                          }
                          ..onSecondaryTap = () {
                            setState(
                              () {
                                a = '';
                              },
                            );
                          },
                        text: 'e',
                        style: GoogleFonts.roboto(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  thickness: 3,
                  color: Colors.green,
                ),
              ),
              Text(
                a.isEmpty || a == '' ? '' : 'Tap On $a',
                style: GoogleFonts.allerta(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

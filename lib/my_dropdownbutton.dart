import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({Key? key}) : super(key: key);

  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  var _country = [
    'India',
    'Australia',
    'England',
    'Pakistan',
    'West Indies',
    'South Africa',
    'Sri Lanka',
    'Bangladesh'
  ];
  var currentCountry;
  var currentState;
  var _state = ['Gujarat', 'Maharashtra', 'Goa'];
  String c = '';
  String s = '';
  var _controller = TextEditingController();
  var _name = '';
  var _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Button'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.black,
        titleTextStyle: GoogleFonts.abhayaLibre(fontSize: 20),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                width: 100,
                child: Text('Name: '),
              ),
              title: Form(
                key: _key,
                child: TextFormField(
                  controller: _controller,
                  onChanged: (name) {
                    setState(() {
                      name = _name;
                    });
                  },
                  validator: (name) {
                    if (name!.isEmpty) {
                      return 'Name Can\'t Be Empty';
                    }
                    ;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 100,
                child: Text('Country: '),
              ),
              title: DropdownButton(
                underline: Container(),
                items: _country
                    .map(
                      (country) => DropdownMenuItem(
                        child: Text(country),
                        value: country,
                      ),
                    )
                    .toList(),
                onChanged: _controller.text.isNotEmpty
                    ? (newItem) {
                        setState(
                          () {
                            currentCountry = newItem.toString();
                          },
                        );
                      }
                    : null,
                hint: Text('Select'),
                value: currentCountry,
              ),
            ),
            ListTile(
              leading: Container(
                width: 100,
                child: Text('City: '),
              ),
              title: DropdownButton(
                borderRadius: BorderRadius.circular(20),
                underline: SizedBox(),
                items: _state
                    .map(
                      (state) => DropdownMenuItem(
                        child: Text(state),
                        value: state,
                      ),
                    )
                    .toList(),
                onChanged: _controller.text.isNotEmpty && currentCountry != null
                    ? (newItem) {
                        setState(
                          () {
                            currentState = newItem.toString();
                          },
                        );
                      }
                    : null,
                value: currentState,
                hint: Text('Select'),
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Submit'),
                onPressed: _controller.text.isNotEmpty &&
                        currentCountry != null &&
                        currentState != null
                    ? () {
                        setState(() {
                          if (_key.currentState!.validate()) {
                            _name = _controller.text;
                          }
                          c = currentCountry;
                          s = currentState;
                        });
                      }
                    : null,
              ),
            ),
            Center(
              child: Text(_name.isEmpty ? '' : 'Your Name is $_name'),
            ),
            Center(
              child: Text(
                  _name.isEmpty || c.isEmpty || c == 'Select Your Country'
                      ? ''
                      : 'Your Country is $c'),
            ),
            Center(
              child: Text(_name.isEmpty || s.isEmpty || s == 'Select Your State'
                  ? ''
                  : 'Your State is $s'),
            ),
          ],
        ),
      ),
    );
  }
}


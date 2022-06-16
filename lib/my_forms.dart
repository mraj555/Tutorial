import 'package:flutter/material.dart';

class MyForms extends StatefulWidget {
  const MyForms({Key? key}) : super(key: key);

  @override
  _MyFormsState createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {
  var date = DateTime.now();
  var _date = TextEditingController();
  var _label = [
    'Home',
    'Work',
    'Telephone',
    'Mobile',
    'Main',
    'Work Fax',
    'Home Fax',
    'Pager'
  ];
  var label;
  var state;
  var _state = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu and Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttarakhand',
    'Uttar Pradesh',
    'West Bengal',
    'Andaman and Nicobar Islands',
    'Chandigarh',
    'Dadra and Nagar Haveli',
    'Daman and Diu',
    'Delhi',
    'Lakshadweep',
    'Puducherry'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Contacts'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 15.0),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  width: 70,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    width: 70,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          contentPadding: EdgeInsets.only(left: 8)),
                    ),
                  ),
                  Container(
                    height: 48,
                    padding: EdgeInsets.only(left: 5),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: DropdownButton(
                      underline: Container(),
                      items: _label
                          .map(
                            (lab) => DropdownMenuItem(
                              child: Text(lab),
                              value: lab,
                            ),
                          )
                          .toList(),
                      onChanged: (newItem) {
                        setState(
                          () {
                            label = newItem.toString();
                          },
                        );
                      },
                      hint: Text('Label'),
                      value: label,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    width: 70,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.location_on_sharp,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Address',
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    width: 70,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'City',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          contentPadding: EdgeInsets.only(left: 8)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    width: 70,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Expanded(
                    child: Container(
                      height: 48,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: DropdownButton(
                          items: _state
                              .map(
                                (sta) => DropdownMenuItem(
                                  child: Text(sta),
                                  value: sta,
                                ),
                              )
                              .toList(),
                          onChanged: (newItem) {
                            setState(
                              () {
                                state = newItem.toString();
                              },
                            );
                          },
                          hint: Text('State'),
                          value: state,
                          isExpanded: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Zip Code',
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    width: 70,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.email_sharp,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          contentPadding: EdgeInsets.only(left: 8)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    width: 70,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.cake_sharp,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _date,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: 'Birthday',
                          filled: true,
                          fillColor: Colors.black12,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.today_sharp),
                            onPressed: () {
                              return _opendatepicker();
                            },
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _opendatepicker() async {
    DateTime? d = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1995),
      lastDate: DateTime(2050),
    );
    if (d != null) {
      setState(() {
        date = d;
        var dat = '${d.day}/${d.month}/${d.year}';
        _date.text = dat;
      });
    }
  }
}

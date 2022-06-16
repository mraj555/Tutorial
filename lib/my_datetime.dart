import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDateTime extends StatefulWidget {
  const MyDateTime({Key? key}) : super(key: key);

  @override
  _MyDateTimeState createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();
  int _selectedIndex = 0;

  List _page = [
    'package:tutorial/my_Card.dart',
    'package:tutorial/my_button.dart'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Date And Time Picker'),
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        titleTextStyle:
            GoogleFonts.antic(fontSize: 20, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Time = ${time.format(context)}',
                style: GoogleFonts.allerta(),
                textAlign: TextAlign.center,
              ),
              onTap: _opentimepicker,
            ),
            ListTile(
              title: Text(
                'Date = ${date.day}-${date.month}-${date.year} ${date.second} ${time.format(context)}',
                style: GoogleFonts.allerta(),
                textAlign: TextAlign.center,
              ),
              onTap: _opendatepicker,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete),
              label: 'Delete',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.drive_file_rename_outline),
              label: 'Rename',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.red),
        ],
      ),
    );
  }

  _opentimepicker() async {
    TimeOfDay? t = await showTimePicker(
        // initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: time);
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

  _opendatepicker() async {
    DateTime? d = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1995),
      lastDate: DateTime(2050),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.yellow,
              onPrimary: Colors.black,
              onSurface: Colors.blue,
            ),
          ),
          child: child!,
        );
      },
    );
    if (d != null) {
      setState(() {
        date = d;
      });
    }
  }
}

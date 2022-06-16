import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Types'),
        backgroundColor: Colors.black87,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Column(
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevated Button'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                ),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Disabled Elevated Button'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
              )
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
                style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.red, width: 3),
                  primary: Colors.green,
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text('Disabled Text Button'),
                style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.black87, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.cyanAccent,
                  shadowColor: Colors.amber,
                  elevation: 5,
                ),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.wifi_calling),
                tooltip: 'Wi-fi Call',
                hoverColor: Colors.purpleAccent,
                highlightColor: Colors.yellow,
                splashColor: Colors.blue,
                color: Colors.black,
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.call_end),
                tooltip: 'End Call',
                hoverColor: Colors.blue,
                highlightColor: Colors.black,
                splashColor: Colors.white,
                color: Colors.red,
                disabledColor: Colors.red,
              )
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {},
                splashColor: Colors.blue,
                tooltip: 'Profile',
                backgroundColor: Colors.black,
                child: Icon(Icons.account_box, color: Colors.deepOrange),
              ),
              FloatingActionButton(
                onPressed: null,
                splashColor: Colors.blue,
                tooltip: 'Log Out',
                backgroundColor: Colors.red,
                child: Icon(Icons.logout, color: Colors.white),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              BackButton(
                color: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              CloseButton(
                onPressed: () {},
                color: Colors.black87,
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.teal,
                splashColor: Colors.white,
                highlightColor: Colors.yellow,
                elevation: 5,
                child: Text('Material Button'),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Icon(
                  Icons.accessibility,
                  color: Colors.deepPurple,
                ),
              )
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextSelectionToolbarTextButton(
                child: Text('Text Selection'),
                padding: EdgeInsets.all(10),
                onPressed: () {},
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RawMaterialButton(
                onPressed: () {},
                child: Text('Raw Material Button'),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.fingerprint),
                label: Text('Security'),
              )
            ],
          )
        ],
      ),
    );
  }
}

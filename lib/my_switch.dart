import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  var isSelect = false;
  var isSelect1 = false;
  var isSelect3 = false;
  var s = ValueNotifier<bool>(false);
  var on = '';
  var user = [
    Icon(Icons.bluetooth),
    Icon(Icons.wifi),
    Icon(Icons.settings),
    Icon(Icons.accessibility),
    Icon(Icons.wifi_tethering),
  ];
  var _isSelected = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch & Toggle Button'),
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.orange,
        centerTitle: true,
        backgroundColor: Colors.black,
        titleTextStyle: GoogleFonts.andada(fontSize: 20),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Switch(
              value: isSelect,
              onChanged: (value) {
                setState(() {
                  isSelect = value;
                });
              },
              activeColor: Colors.green,
              activeThumbImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg'),
              inactiveThumbImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/1200px-2021_Facebook_icon.svg.png'),
              inactiveTrackColor: Colors.yellow,
            ),
            SwitchListTile(
              value: isSelect1,
              onChanged: (value) {
                setState(
                  () {
                    isSelect1 = value;
                    if (value == true) {
                      on = 'ON';
                    }
                    if (value == false) {
                      on = 'OFF';
                    }
                  },
                );
              },
              title: Text('BlueTooth'),
              visualDensity: VisualDensity.comfortable,
              activeColor: Colors.green,
              secondary: isSelect1 == false
                  ? Icon(
                      Icons.bluetooth,
                      color: Colors.blueAccent,
                    )
                  : Icon(
                      Icons.bluetooth_searching_outlined,
                      color: Colors.blueAccent,
                    ),
              shape: Border(
                bottom: BorderSide(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Center(
                child: Text(isSelect1 == null ? '' : 'Bluetooth is $on'),
              ),
            ),
            ToggleButtons(
              // direction: Axis.vertical,
              focusColor: Colors.green,
              highlightColor: Colors.red,
              selectedBorderColor: Colors.red,
              splashColor: Colors.blue,
              fillColor: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
              children: user,
              isSelected: _isSelected,
              onPressed: (index) {
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSwitch(
                activeColor: Colors.blue,
                thumbColor: Colors.white,
                value: isSelect,
                onChanged: (value) {
                  setState(() {
                    isSelect = value;
                  });
                },
              ),
            ),
            AdvancedSwitch(
              activeImage: NetworkImage(
                  'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg'),
              controller: s,
              activeChild: Text(
                'ON',
                style: TextStyle(color: Colors.deepOrange),
              ),
              inactiveChild: Text('OFF'),
              inactiveImage: NetworkImage(
                  'https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300'),
              borderRadius: BorderRadius.circular(5),
              width: 100,
              height: 30,
              enabled: true,
              disabledOpacity: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: FlutterSwitch(
                value: isSelect3,
                onToggle: (val) {
                  setState(
                    () {
                      isSelect3 = val;
                    },
                  );
                },
                activeText: 'ON',
                activeTextColor: Colors.black,
                inactiveText: 'OFF',
                inactiveTextColor: Colors.red,
                valueFontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

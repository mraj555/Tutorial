import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCkBox extends StatefulWidget {
  const MyCkBox({Key? key}) : super(key: key);

  @override
  _MyCkBoxState createState() => _MyCkBoxState();
}

class _MyCkBoxState extends State<MyCkBox> {
  bool v = false;
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  bool v4 = false;
  bool v5 = false;
  bool v6 = false;
  bool v7 = false;
  bool v8 = false;
  bool v9 = false;

  int sum = 0;
  var price = [
    29999,
    3499,
    12499,
    799,
    11499,
    1999,
    13490,
    1699,
    11499,
    571,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My CheckBox'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        elevation: 15,
        centerTitle: true,
        shadowColor: Colors.yellow,
        backgroundColor: Colors.black,
        titleTextStyle: GoogleFonts.aclonica(fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                  'https://m.media-amazon.com/images/I/61TnX0PmqES._SL1500_.jpg',
                ),
              ),
              title: Text(
                'OnePlus Nord 2 5G (Blue Haze, 8GB RAM, 128GB Storage',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[0]}'),
              trailing: Checkbox(
                value: v,
                onChanged: (val) {
                  setState(
                    () {
                      v = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/61gscZYmaoL._SL1377_.jpg'),
              ),
              title: Text(
                'boAt Xtend Smartwatch with Alexa Built-in, 1.69” HD Display',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[1]}'),
              trailing: Checkbox(
                value: v1,
                onChanged: (val) {
                  setState(
                    () {
                      v1 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                  'https://m.media-amazon.com/images/I/71hgVYiuFXL._SL1500_.jpg',
                ),
              ),
              title: Text(
                'realme narzo 50A (Oxygen Blue , 4GB RAM + 64 GB Storage)',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[2]}'),
              trailing: Checkbox(
                value: v2,
                onChanged: (val) {
                  setState(
                    () {
                      v2 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/51d3YYAQj1L._SL1100_.jpg'),
              ),
              title: Text(
                'pTron Bassbuds Duo New Bluetooth 5.1 Wireless Headphone',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[3]}'),
              trailing: Checkbox(
                value: v3,
                onChanged: (val) {
                  setState(
                    () {
                      v3 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/817clKAKcqL._SL1500_.jpg'),
              ),
              title: Text(
                'Redmi 10 Prime (Phantom Black 4GB RAM 64GB',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[4]}'),
              trailing: Checkbox(
                value: v4,
                onChanged: (val) {
                  setState(
                    () {
                      v4 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/61TfoVDHWML._SL1500_.jpg'),
              ),
              title: Text(
                'Noise ColorFit Pulse Smartwatch with 1.4" Full Touch HD Display',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[5]}'),
              trailing: Checkbox(
                value: v5,
                onChanged: (val) {
                  setState(
                    () {
                      v5 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/7136zgtNmJL._SL1500_.jpg'),
              ),
              title: Text(
                'Oppo A15s (Dynamic Black, 4GB, 128GB Storage)',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[6]}'),
              trailing: Checkbox(
                value: v6,
                onChanged: (val) {
                  setState(
                    () {
                      v6 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/71lVwl3q-kL._SL1500_.jpg'),
              ),
              title: Text(
                'Mi Power Bank 3i 20000mAh | 18W Fast PD Charging',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[7]}'),
              trailing: Checkbox(
                value: v7,
                onChanged: (val) {
                  setState(
                    () {
                      v7 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/71r69Y7BSeL._SL1500_.jpg'),
              ),
              title: Text(
                'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage)',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[8]}'),
              trailing: Checkbox(
                value: v8,
                onChanged: (val) {
                  setState(
                    () {
                      v8 = val!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/61xNG4wjOuL._SL1400_.jpg'),
              ),
              title: Text(
                'HP v236w 64GB USB 2.0 Pen Drive',
                style: GoogleFonts.allerta(fontSize: 12),
              ),
              subtitle: Text('Price: ${price[9]}'),
              trailing: Checkbox(
                value: v9,
                onChanged: (val) {
                  setState(
                    () {
                      v9 = val!;
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        sum = 0;
                        if (v == true) {
                          sum += price[0];
                        }
                        if (v1 == true) {
                          sum += price[1];
                        }
                        if (v2 == true) {
                          sum += price[2];
                        }
                        if (v3 == true) {
                          sum += price[3];
                        }
                        if (v4 == true) {
                          sum += price[4];
                        }
                        if (v5 == true) {
                          sum += price[5];
                        }
                        if (v6 == true) {
                          sum += price[6];
                        }
                        if (v7 == true) {
                          sum += price[7];
                        }
                        if (v8 == true) {
                          sum += price[8];
                        }
                        if (v9 == true) {
                          sum += price[9];
                        }
                      },
                    );
                  },
                  child: Text('Submit'),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(50),
              child: Text(
                sum == 0 ? '' : 'Total Payable Amount : $sum',
                style: GoogleFonts.alegreyaSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

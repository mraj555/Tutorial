import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [Colors.yellowAccent, Colors.blue],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.teal,
                    splashColor: Colors.white,
                  ),
                ),
              ),
              Card(
                borderOnForeground: true,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.teal,
                    splashColor: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.teal,
                    splashColor: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    onTap: () {
                      print('Pressed');
                    },
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.teal,
                    splashColor: Colors.white,
                  ),
                ),
              ),
              Card(
                borderOnForeground: true,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.teal,
                    splashColor: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.teal,
                    splashColor: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

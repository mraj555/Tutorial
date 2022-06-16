import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyReorderableListView extends StatefulWidget {
  const MyReorderableListView({Key? key}) : super(key: key);

  @override
  _MyReorderableListViewState createState() => _MyReorderableListViewState();
}

class _MyReorderableListViewState extends State<MyReorderableListView> {
  List _name = [
    'Ridham',
    'Madhav',
    'Jenil',
    'Gautam',
    'Nehal',
  ];

  List _imag = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyIpAt8211_DCp5rMAVhu-RQIe9gTu_r9piw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdw8Z-dOgc9IXrW7zX12rkL0ZrcjhMdhIRUw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmijLXXeVuoV8O4bTS2DTFK1e8zsIeo_7H8w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzuY2Si3nXBYTAsDFkpWJw4TewBh1pzcNYXw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRawA8WqJ0FVGpM15Cvs3xp61KXde3ZfxLBiQ&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Reorderable ListView',
            style: GoogleFonts.kaushanScript(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: ReorderableListView(
          children: [
            for (var item in _name)
              Card(
                key: ValueKey(item),
                child: ListTile(
                  title: Text(item),
                  leading: Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: Text(item),
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        children: [],
                      ),
                    );
                  },
                ),
              ),
          ],
          onReorder: (oldIndex, newIndex) {
            setState(
              () {
                if (newIndex > oldIndex) {
                  newIndex -= 1;
                }
                var a = _name.removeAt(oldIndex);
                _name.insert(newIndex, a);
              },
            );
          },
        ),
      ),
    );
  }
}

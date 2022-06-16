import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyReorderableListViewBuilder extends StatefulWidget {
  const MyReorderableListViewBuilder({Key? key}) : super(key: key);

  @override
  _MyReorderableListViewBuilderState createState() =>
      _MyReorderableListViewBuilderState();
}

class _MyReorderableListViewBuilderState
    extends State<MyReorderableListViewBuilder> {
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
        body: ReorderableListView.builder(
          itemBuilder: (context, index) {
            String n = _name[index];
            String i = _imag[index];
            return Card(
              key: ValueKey(n),
              child: ListTile(
                title: Text(n),
                leading: Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => SimpleDialog(
                      title: Text(n),
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      children: [
                        Image.network(
                          i,
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
          itemCount: _name.length,
          onReorder: (oldIndex, newIndex) {
            setState(
              () {
                if (newIndex > oldIndex) {
                  newIndex -= 1;
                }
                var a = _name.removeAt(oldIndex);
                var im = _imag.removeAt(oldIndex);
                _name.insert(newIndex, a);
                _imag.insert(newIndex, im);
              },
            );
          },
        ),
      ),
    );
  }
}

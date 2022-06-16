import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class MyBackDropAppBar extends StatefulWidget {
  const MyBackDropAppBar({Key? key}) : super(key: key);

  @override
  _MyBackDropAppBarState createState() => _MyBackDropAppBarState();
}

class _MyBackDropAppBarState extends State<MyBackDropAppBar> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
      ),
      backLayer: Center(
        child: Image.network(
          'https://media.istockphoto.com/photos/green-lawn-at-hill-at-sunrise-picture-id1294990080?b=1&k=20&m=1294990080&s=170667a&w=0&h=-VYbhmVtOU1u6wx03JJwhiQjTc3N4IhddyvQliHs5sM=',
          fit: BoxFit.fill,
        ),
      ),
      frontLayer: Center(
        child: Text('BackDrop AppBar'),
      ),
    );
  }
}

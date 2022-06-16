import 'package:flutter/material.dart';

class MySliversAppBar extends StatefulWidget {
  const MySliversAppBar({Key? key}) : super(key: key);

  @override
  _MySliversAppBarState createState() => _MySliversAppBarState();
}

class _MySliversAppBarState extends State<MySliversAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Silvers AppBar',
                // style: TextStyle(
                //   fontWeight: FontWeight.normal,
                // ),
              ),
              centerTitle: true,
              background: Image.network(
                'https://media.istockphoto.com/photos/green-lawn-at-hill-at-sunrise-picture-id1294990080?b=1&k=20&m=1294990080&s=170667a&w=0&h=-VYbhmVtOU1u6wx03JJwhiQjTc3N4IhddyvQliHs5sM=',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Slivers App Bar'),
            ),
          ),
        ],
      ),
    );
  }
}

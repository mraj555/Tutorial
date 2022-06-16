import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBottomTabBar extends StatefulWidget {
  const MyBottomTabBar({Key? key}) : super(key: key);

  @override
  _MyBottomTabBarState createState() => _MyBottomTabBarState();
}

class _MyBottomTabBarState extends State<MyBottomTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  var _tabs = [
    Tab(
      icon: Icon(Icons.chat),
      text: 'Chat',
    ),
    Tab(
      icon: Icon(Icons.call),
      text: 'Call',
    ),
    Tab(
      icon: Icon(Icons.settings),
      text: 'Settings',
    ),
    Tab(
      icon: Icon(Icons.menu),
      text: 'Menu',
    ),
  ];

  var _tabview = [
    Center(
      child: Icon(Icons.chat),
    ),
    Center(
      child: Icon(Icons.call),
    ),
    Center(
      child: Icon(Icons.settings),
    ),
    Center(
      child: Icon(Icons.menu),
    ),
  ];

  @override
  void initState() {
    super.initState();
    setState(
      () {
        _controller = TabController(
          length: _tabs.length,
          vsync: this,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Bottom Tab Bar'),
          elevation: 15,
          centerTitle: true,
          titleTextStyle: GoogleFonts.gideonRoman(fontSize: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: _tabview,
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: TabBar(
            tabs: _tabs,
            controller: _controller,
          ),
        ),
      ),
    );
  }
}

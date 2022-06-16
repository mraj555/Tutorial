import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({Key? key}) : super(key: key);

  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  var _tab = [
    Tab(
      icon: Icon(Icons.camera_alt_rounded),
    ),
    Tab(
      child: Container(
        child: Row(
          children: [
            Icon(Icons.chat),
            Text(' Chats'),
          ],
        ),
      ),
    ),
    Tab(
      child: Container(
        child: Row(
          children: [
            Icon(Icons.share),
            Text(' Invite'),
          ],
        ),
      ),
    ),
    Tab(
      child: Container(
        child: Row(
          children: [
            Icon(Icons.call),
            Text(' Calls'),
          ],
        ),
      ),
    ),
  ];

  var _tabpages = [
    Center(
      child: Icon(Icons.camera),
    ),
    Center(
      child: Icon(Icons.chat),
    ),
    Center(
      child: Icon(Icons.share),
    ),
    Center(
      child: Icon(Icons.call),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          toolbarHeight: 60,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 8),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/2042px-WhatsApp.svg.png',
              width: 50,
              height: 50,
            ),
          ),
          title: Text('Chat App'),
          actions: [
            Icon(Icons.search),
            _pop(),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: _tab,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
          ),
        ),
        body: TabBarView(
          children: _tabpages,
        ),
      ),
    );
  }
}

_pop() {
  return PopupMenuButton(
    itemBuilder: (context) {
      return [
        PopupMenuItem(
          child: Text('New Group'),
        ),
        PopupMenuItem(
          child: Text('New Broadcast'),
        ),
        PopupMenuItem(
          child: Text('Linked Devices'),
        ),
        PopupMenuItem(
          child: Text('Starred Messages'),
        ),
        PopupMenuItem(
          child: Text('Payments'),
        ),
        PopupMenuItem(
          child: Text('Settings'),
        ),
      ];
    },
  );
}

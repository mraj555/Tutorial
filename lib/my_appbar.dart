import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 15,
          centerTitle: true,
          backgroundColor: Colors.black,
          titleTextStyle: GoogleFonts.alegreya(fontSize: 20),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('New Group'),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text('New Broadcast'),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text('Linked Devices'),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text('Starred Messages'),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text('Payments'),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
                    onTap: () {},
                  ),
                ];
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            '$num',
            style: GoogleFonts.alata(
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            child: Column(
              children: [
                ListTile(
                  title: Text('Account'),
                  leading: Icon(
                    Icons.vpn_key,
                    color: Colors.black,
                  ),
                  subtitle: Text('Privacy, security, change number'),
                ),
                ListTile(
                  title: Text('Chats'),
                  leading: Icon(
                    Icons.chat,
                    color: Colors.black,
                  ),
                  subtitle: Text('Theme, wallpapers, chat history'),
                ),
                ListTile(
                  title: Text('Notifications'),
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  subtitle: Text('Message, group & call tones'),
                ),
                ListTile(
                  title: Text('Storage and data'),
                  leading: Icon(
                    Icons.storage,
                    color: Colors.black,
                  ),
                  subtitle: Text('Network usage, auto-download'),
                ),
                ListTile(
                  title: Text('Help'),
                  leading: Icon(
                    Icons.help_outline_sharp,
                    color: Colors.black,
                  ),
                  subtitle: Text('Help centre, contact us, privacy policy'),
                ),
                ListTile(
                  title: Text('Invite a friend'),
                  leading: Icon(
                    Icons.people,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: GestureDetector(
          onLongPress: () {
            setState(
              () {
                num++;
              },
            );
          },
          child: FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  num--;
                },
              );
            },
            child: Icon(Icons.add),
          ),
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.yellow,
          child: Container(
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star),
                Icon(Icons.home),
                Icon(Icons.account_circle),
                Icon(Icons.web_asset_sharp),
              ],
            ),
          ),
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
        ),
      ),
    );
  }
}
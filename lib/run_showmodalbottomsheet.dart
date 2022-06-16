import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyShowModalBottomSheet extends StatefulWidget {
  const MyShowModalBottomSheet({Key? key}) : super(key: key);

  @override
  _MyShowModalBottomSheetState createState() => _MyShowModalBottomSheetState();
}

class _MyShowModalBottomSheetState extends State<MyShowModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        shadowColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 15,
        centerTitle: true,
        titleTextStyle: GoogleFonts.share(fontSize: 20),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Sign In',
            style: GoogleFonts.aBeeZee(),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.red),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.cyanAccent),
                  ),
                ),
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text('User 1'),
                      subtitle: Text('Sub User 1'),
                    ),
                    ListTile(
                      title: Text('User 1'),
                      subtitle: Text('Sub User 1'),
                    ),
                    Center(
                      child: CloseButton(
                        color: Colors.red,
                        onPressed: () {
                          return Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RunShowBottomSheet extends StatelessWidget {
  const RunShowBottomSheet({Key? key}) : super(key: key);

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
      body: MyShowBottomSheet(),
    );
  }
}

class MyShowBottomSheet extends StatefulWidget {
  const MyShowBottomSheet({Key? key}) : super(key: key);

  @override
  _MyShowBottomSheetState createState() => _MyShowBottomSheetState();
}

class _MyShowBottomSheetState extends State<MyShowBottomSheet> {
  @override
  Widget build(BuildContext context1) {
    return Center(
      child: ElevatedButton(
        child: Text(
          'Sign In',
          style: GoogleFonts.aBeeZee(),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.red),
        onPressed: () {
          showBottomSheet(

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
    );
  }
}

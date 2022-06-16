import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySimpleDialog extends StatefulWidget {
  const MySimpleDialog({Key? key}) : super(key: key);

  @override
  _MySimpleDialogState createState() => _MySimpleDialogState();
}

class _MySimpleDialogState extends State<MySimpleDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        elevation: 25,
        title: Text('My Simple Dialog'),
        centerTitle: true,
        titleTextStyle:
            GoogleFonts.share(fontStyle: FontStyle.italic, fontSize: 20),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Simple Dialog'),
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              side: BorderSide(color: Colors.black, width: 2)),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text('Users :-'),
                titleTextStyle: GoogleFonts.allerta(
                    fontWeight: FontWeight.bold, color: Colors.black),
                children: [
                  ListTile(
                    title: Text('Google'),
                    subtitle: Text('IT Company'),
                    leading: ClipOval(
                      child: Image.network(
                          'https://cdn-teams-slug.flaticon.com/google.jpg'),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.business),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            title: ListTile(
                              title: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 5,
                                child: Image.network(
                                  'https://aviddemand.com/wp-content/uploads/2016/11/googlelogo_color_284x96dp.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: ListTile(
                                  leading: Icon(Icons.search),
                                  title: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    cursorHeight: 20,
                                    keyboardAppearance: Brightness.light,
                                  ),
                                  trailing: Icon(Icons.mic),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: Text('FaceBook'),
                    subtitle: Text('Social Media Company'),
                    leading: ClipOval(
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/1200px-2021_Facebook_icon.svg.png'),
                    ),
                    trailing: Icon(Icons.business),
                  ),
                  ListTile(
                    title: Text('Instagram'),
                    subtitle: Text('Social Media Company'),
                    leading: ClipOval(
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/1200px-Instagram_logo_2016.svg.png'),
                    ),
                    trailing: Icon(Icons.business),
                  ),
                  ListTile(
                    title: Text('Whatsapp'),
                    subtitle: Text('Social Media Company'),
                    leading: ClipOval(
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/640px-WhatsApp.svg.png'),
                    ),
                    trailing: Icon(Icons.business),
                  ),
                  ListTile(
                    title: Text('Twitter'),
                    subtitle: Text('Social Media Company'),
                    leading: ClipOval(
                      child: Image.network(
                          'https://play-lh.googleusercontent.com/wIf3HtczQDjHzHuu7vezhqNs0zXAG85F7VmP7nhsTxO3OHegrVXlqIh_DWBYi86FTIGk'),
                    ),
                    trailing: Icon(Icons.business),
                  ),
                  ListTile(
                    title: Text('Telegram'),
                    subtitle: Text('Social Media Company'),
                    leading: ClipOval(
                      child: Image.network(
                          'https://media.istockphoto.com/vectors/white-paper-plane-on-blue-background-vector-illustration-vector-id951164518?k=20&m=951164518&s=612x612&w=0&h=3UdkhpEUQJJjUnWlRwSOtmgmR_B7NT5Ex_i8NSdCX_Q='),
                    ),
                    trailing: Icon(Icons.business),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('OK'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Cancel'),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

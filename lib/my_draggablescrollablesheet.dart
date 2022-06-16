import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDragableScrollableSheet extends StatefulWidget {
  const MyDragableScrollableSheet({Key? key}) : super(key: key);

  @override
  _MyDragableScrollableSheetState createState() =>
      _MyDragableScrollableSheetState();
}

class _MyDragableScrollableSheetState extends State<MyDragableScrollableSheet> {
  List _title = [
    'Browser',
    'Email',
    'Images',
    'Video Call',
    'Wifi',
    'Bluetooth',
    'Delete',
    'Rename',
    'Keyboard',
    'Headset'
  ];

  List _subtitle = [
    'Internet App',
    'Mail App',
    'System App',
    'Calling App',
    'Connectivity',
    'Connectivity',
    'System App',
    'System Command',
    'System App',
    'Music App'
  ];

  List _icon = [
    Icons.open_in_browser,
    Icons.email_outlined,
    Icons.perm_media_outlined,
    Icons.video_call,
    Icons.wifi,
    Icons.bluetooth,
    Icons.delete,
    Icons.drive_file_rename_outline,
    Icons.keyboard,
    Icons.headset,
  ];

  List _images = [
    'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&w=0&h=pCjvUkNlz9_esVvQw2Wgc8VJZBMgJrB0FQmktCA0KYY=',
    'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__340.jpg',
    'https://images.unsplash.com/photo-1610878180933-123728745d22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FuYWRhJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://webneel.com/wallpaper/sites/default/files/images/08-2018/3-nature-wallpaper-mountain.jpg',
    'https://cdn-prod.medicalnewstoday.com/content/images/articles/325/325466/man-walking-dog.jpg',
    'https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvimPzwOXCXDCFyo4gygMnyo_C3kJ6XoGCDQ&usqp=CAU',
    'https://wallpaperaccess.com/full/2817799.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT35HYtO9g1X0jQdyepdra2CWR53XuQVFcZDw&usqp=CAU',
    'https://image.freepik.com/free-photo/odenwald-germany-is-pure-nature_181624-32381.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dragable Scrollable Sheet'),
          elevation: 15,
          backgroundColor: Colors.black,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          shadowColor: Colors.blue,
          titleTextStyle: GoogleFonts.arimaMadurai(fontSize: 20),
        ),
        body: Stack(
          children: [
            SizedBox.expand(
              child: Container(
                color: Colors.greenAccent,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.5,
              builder: (context, scroll) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    color: Colors.green,
                  ),
                  child: Scrollbar(
                    child: ListView.builder(
                      itemCount: 10,
                      controller: scroll,
                      itemBuilder: (context, int index) {
                        return ListTile(
                          title: Text(
                            _title[index],
                            style: GoogleFonts.alike(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            _subtitle[index],
                            style: GoogleFonts.allerta(
                              fontSize: 12,
                              color: Colors.black26,
                            ),
                          ),
                          leading: IconButton(
                            icon: Icon(
                              _icon[index],
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(_images[index]),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}

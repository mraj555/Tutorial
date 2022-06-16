import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial/Youtube%20Player/yt_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List ytLinks = [
    'https://www.youtube.com/watch?v=sz4slPFwEvs',
    'https://www.youtube.com/watch?v=21vHY9P90jE',
    'https://www.youtube.com/watch?v=G4INTsatBew',
    'https://www.youtube.com/watch?v=w3krSTSGmaw',
    'https://www.youtube.com/watch?v=si6sTuVZxtw',
    'https://www.youtube.com/watch?v=zpbyJ7GVMVU',
    'https://www.youtube.com/watch?v=OF3lwqcUwPY',
    'https://www.youtube.com/watch?v=JkQJQt_pQho',
    'https://www.youtube.com/watch?v=rTr8BUlUftg',
    'https://www.youtube.com/watch?v=tre6TfQELsg',
  ];

  List title = [
    'Firebase Setup',
    'CRUD with Firestore (Write Data)',
    'CRUD with Firestore (Read Data)',
    'CRUD with Firestore (Update Data)',
    'Pagination & Infinite Scrolling',
    'Firebase Sign In & Logout',
    'Firebase Authentication',
    'Firebase Reset Password',
    'Firebase Verify Email',
    'Auth Flow With Firebase'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          title: Text('Flutter Topics'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: List.generate(
            ytLinks.length,
            (index) => Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => YTPlayer(
                        videoLink: ytLinks[index],
                      ),
                    ),
                  );
                },
                child: Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 1}. ${title[index]}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Colors.blue,
                        Colors.lightBlue,
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

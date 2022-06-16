import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqplayer/iqplayer.dart';

class MyVLCPlayer extends StatefulWidget {
  const MyVLCPlayer({Key? key}) : super(key: key);

  @override
  State<MyVLCPlayer> createState() => _MyVLCPlayerState();
}

class _MyVLCPlayerState extends State<MyVLCPlayer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 15,
          backgroundColor: Colors.black,
          title: const Text('VLC Player'),
          titleTextStyle: GoogleFonts.asset(fontSize: 20),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: IQScreen(
            description: '',
            videoPlayerController: VideoPlayerController.network(
                'https://www.hd9video.com/siteuploads/files/sfd1/200/83%20-%20Official%20Trailer-(Hd9video).mp4'),
            title: 'Video Title',
            subtitleProvider: SubtitleProvider.fromString(''),
          ),
        ),
      ),
    );
  }
}

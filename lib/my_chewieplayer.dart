import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class MyChewiePlayer extends StatefulWidget {
  const MyChewiePlayer({Key? key}) : super(key: key);

  @override
  State<MyChewiePlayer> createState() => _MyChewiePlayerState();
}

class _MyChewiePlayerState extends State<MyChewiePlayer> {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://www.hd9video.com/siteuploads/files/sfd1/200/83%20-%20Official%20Trailer-(Hd9video).mp4');
    _chewieController = ChewieController(
        videoPlayerController: _controller!,
        aspectRatio: 16 / 9,
        autoInitialize: true,
        showControls: true,
        showControlsOnInitialize: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          titleTextStyle: GoogleFonts.archivoBlack(fontSize: 20),
          title: Text('Chewie Player'),
          backgroundColor: Colors.black,
          elevation: 15,
        ),
        body: Center(
          child: Chewie(
            controller: _chewieController!,
          ),
        ),
      ),
    );
  }
}

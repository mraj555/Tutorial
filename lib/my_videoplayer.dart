import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  VideoPlayerController? _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(
        'https://www.hd9video.com/siteuploads/files/sfd1/200/83%20-%20Official%20Trailer-(Hd9video).mp4')
      ..initialize().then(
        (value) {
          setState(() {});
        },
      )
      ..setLooping(true)
      ..addListener(
        () {
          setState(
            () {},
          );
        },
      );
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
          titleTextStyle: GoogleFonts.secularOne(fontSize: 20),
          title: Text('Video Player'),
          backgroundColor: Colors.black,
          elevation: 15,
        ),
        body: _videoPlayerController!.value.isInitialized
            ? videoPlayerUI()
            : Center(
                child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_ehfMXK.json',
                  height: 100,
                  width: 100,
                ),
              ),
      ),
    );
  }

  videoPlayerUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: _videoPlayerController!.value.aspectRatio,
          child: VideoPlayer(_videoPlayerController!),
        ),
        Text(
            '${_videoPlayerController!.value.position} / ${_videoPlayerController!.value.duration}'),
        VideoProgressIndicator(
          _videoPlayerController!,
          allowScrubbing: true,
        ),
        ElevatedButton.icon(
          onPressed: () {
            setState(
              () {
                _videoPlayerController!.value.isPlaying
                    ? _videoPlayerController!.pause()
                    : _videoPlayerController!.play();
              },
            );
          },
          icon: Icon(
            _videoPlayerController!.value.isPlaying
                ? Icons.pause
                : Icons.play_arrow,
          ),
          label:
              Text(_videoPlayerController!.value.isPlaying ? 'Play' : 'Pause'),
        ),
      ],
    );
  }
}

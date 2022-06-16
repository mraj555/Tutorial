import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YTPlayer extends StatefulWidget {
  final String videoLink;

  const YTPlayer({Key? key, required this.videoLink}) : super(key: key);

  @override
  State<YTPlayer> createState() => _YTPlayerState();
}

class _YTPlayerState extends State<YTPlayer> {
  YoutubePlayerController? _controller;
  String? videoID;

  void requestPermission() async {
    var status = await Permission.microphone.status;
    var status_1 = await Permission.camera.status;
    if (!status.isGranted ||
        status.isDenied ||
        !status_1.isGranted ||
        status_1.isDenied) {
      await Permission.microphone.request();
      await Permission.camera.request();
    }
  }

  @override
  void initState() {
    videoID = YoutubePlayer.convertUrlToId(widget.videoLink);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        controlsVisibleAtStart: true,
      ),
    )..addListener(
        () {
          setState(
            () {},
          );
        },
      );
    requestPermission();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: YoutubePlayerBuilder(
          builder: (context, player) {
            return ListView(
              children: [
                player,
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0,left: 10.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            padding: EdgeInsets.only(bottom: 12),
                            child: Text(
                              'Title',
                              style: GoogleFonts.robotoSlab(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 12),
                              child: Text(
                                '${_controller!.metadata.title}',
                                style: GoogleFonts.robotoSlab(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            padding: EdgeInsets.only(bottom: 12),
                            child: Text(
                              'Description',
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 12),
                              child: Text(
                                '${_controller!.metadata.author}',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          player: YoutubePlayer(
            controller: _controller!,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.red,
              handleColor: Colors.redAccent,
            ),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: ProgressBarColors(
                  playedColor: Colors.red,
                  handleColor: Colors.redAccent,
                ),
              ),
              RemainingDuration(),
              PlaybackSpeedButton(),
              FullScreenButton(),
            ],
            topActions: [
              Expanded(
                child: Text(
                  _controller!.metadata.title,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

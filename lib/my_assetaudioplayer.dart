// import 'package:audio_effect/audio_effect.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MyAudioPlayer extends StatefulWidget {
//   const MyAudioPlayer({Key? key}) : super(key: key);
//
//   @override
//   State<MyAudioPlayer> createState() => _MyAudioPlayerState();
// }
//
// class _MyAudioPlayerState extends State<MyAudioPlayer> {
//   var _audioQuery = OnAudioQuery();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: FutureBuilder<List<SongModel>>(
//           future: _audioQuery.querySongs(),
//           builder: (context, snapshot) {
//             return Center(
//               child: AudioEffects(
//                 isPlaying: true,
//                 url: snapshot.data!.elementAt(21).data,
//                 id: snapshot.data!.elementAt(21).id,
//                 type: ArtworkType.AUDIO,
//                 color: Colors.black,
//                 artworkHeight: 300,
//                 artworkWidth: 300,
//                 artworkBorder: BorderRadius.circular(200),
//                 height: 500,
//                 width: 500,
//                 isLocal: true,
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

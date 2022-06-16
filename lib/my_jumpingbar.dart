// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';
//
// class MyJumpingBar extends StatefulWidget {
//   const MyJumpingBar({Key? key}) : super(key: key);
//
//   @override
//   _MyJumpingBarState createState() => _MyJumpingBarState();
// }
//
// class _MyJumpingBarState extends State<MyJumpingBar>
//     with SingleTickerProviderStateMixin {
//   // TabController? _controller;
//
//   var _tabs = [
//     TabItemIcon(
//       buildWidget: (_, color) => Container(
//         child: Icon(
//           Icons.home,
//           color: Colors.red,
//         ),
//       ),
//       startColor: Colors.red,
//       endColor: Colors.green,
//       curveColor: Colors.yellow,
//     ),
//     TabItemIcon(
//       iconData: Icons.ondemand_video,
//       startColor: Colors.red,
//       endColor: Colors.green,
//       curveColor: Colors.yellow,
//     ),
//     TabItemIcon(
//       iconData: Icons.camera_alt_rounded,
//       startColor: Colors.red,
//       endColor: Colors.green,
//       curveColor: Colors.yellow,
//     ),
//     TabItemIcon(
//       buildWidget: (_, color) => Container(
//         child: Icon(
//           Icons.favorite_border,
//           color: Colors.red,
//         ),
//       ),
//       startColor: Colors.red,
//       endColor: Colors.green,
//       curveColor: Colors.yellow,
//     ),
//     TabItemIcon(
//       iconData: Icons.account_circle,
//       startColor: Colors.red,
//       endColor: Colors.green,
//       curveColor: Colors.yellow,
//     )
//   ];
//
//   var _pages = [
//     Expanded(
//       child: Container(
//         color: Colors.green,
//         child: Center(
//           child: Icon(
//             Icons.home,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         color: Colors.yellow,
//         child: Center(
//           child: Icon(
//             Icons.ondemand_video_outlined,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         color: Colors.blue,
//         child: Center(
//           child: Icon(
//             Icons.camera,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         color: Colors.red,
//         child: Center(
//           child: Icon(
//             Icons.favorite_border,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         color: Colors.black,
//         child: Center(
//           child: Icon(
//             Icons.account_circle,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//   ];
//
//   var _currentIndex = 2;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: DefaultTabController(
//         length: 5,
//         child: Scaffold(
//           appBar: AppBar(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(
//                 bottom: Radius.circular(15),
//               ),
//             ),
//             titleTextStyle: GoogleFonts.atma(fontSize: 20),
//             centerTitle: true,
//             elevation: 15,
//             title: Text('Jumping Bar'),
//             backgroundColor: Colors.black,
//           ),
//           body: TabBarView(
//             children: _pages,
//           ),
//           bottomNavigationBar: JumpingTabBar(
//             backgroundColor: Colors.black,
//             items: _tabs,
//             selectedIndex: _currentIndex,
//             circleGradient: LinearGradient(
//               colors: [
//                 Colors.purpleAccent,
//                 Colors.deepPurple,
//               ],
//               begin: Alignment.bottomLeft,
//               end: Alignment.topRight,
//             ),
//             onChangeTab: (index) {
//               _currentIndex = index;
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/SQLlite%20Database/my_datatable.dart';
import 'package:tutorial/SQLlite%20Database/students_data.dart';
import 'package:tutorial/Task/home.dart';
import 'package:tutorial/Youtube%20Player/video_page.dart';
import 'package:tutorial/Youtube%20Player/yt_player.dart';
import 'package:tutorial/my_appbar.dart';
import 'package:tutorial/my_bottomtabbar.dart';



void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const MyAppBar(),
    ),
  );
}

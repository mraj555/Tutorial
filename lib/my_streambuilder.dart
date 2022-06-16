import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStreamBuilder extends StatefulWidget {
  const MyStreamBuilder({Key? key}) : super(key: key);

  @override
  _MyStreamBuilderState createState() => _MyStreamBuilderState();
}

class _MyStreamBuilderState extends State<MyStreamBuilder> {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (i) => i);

  var pause = true;

  int timerValue = 0;
  int hour = 0;
  int minute = 59;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          titleTextStyle: GoogleFonts.robotoSlab(fontSize: 20),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          title: Text('Stream Builder'),
        ),
        body: Center(
          child: StreamBuilder(
            stream: stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print('Stream :- ${snapshot.data}');
                if (!pause) {
                  timerValue++;
                  if (timerValue == 60) {
                    timerValue = 0;
                  }
                  if(timerValue % 60 == 0) {
                    minute++;
                    if(minute==60){
                      minute = 0;
                    }
                  }
                  if(minute % 60 == 0 && timerValue % 60 == 0) {
                    print(minute);
                    hour++;
                  }
                }
              }
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Timer',
                    style: GoogleFonts.alegreya(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  buildTimerUI(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  buildTimerUI() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                spreadRadius: 1,
                blurRadius: 15,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 15,
                offset: Offset(-5, -5),
              ),
            ],
          ),
          child: Text(
            '${hour.toString().padLeft(2, '0')} : ${minute.toString().padLeft(2, '0')} : ${timerValue.toString().padLeft(2, '0')}',
            style: GoogleFonts.gideonRoman(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: () {
            setState(
              () {
                pause = !pause;
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(5, 5),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(-5, -5),
                      ),
                    ],
                  ),
                  child: Icon(
                    pause ? Icons.play_arrow : Icons.pause,
                    color: Colors.green,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        timerValue = 0;
                        minute = 0;
                        hour = 0;
                        pause = true;
                      },
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(5, 5),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(-5, -5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.stop,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

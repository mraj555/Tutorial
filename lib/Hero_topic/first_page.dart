import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var person = [
    'https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg',
    'https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg',
    'https://www.stockbasket.com/blog/wp-content/uploads/2019/12/Warren-Buffett-HD-Wallpaper-scaled.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg',
    'https://hs-marketing.imgix.net/images/blog/steve-jobs.jpg?auto=compress,format&fit=scale&w=1200&h=673&dpr=1'
  ];

  var name = [
    'Mark ZukerBurg',
    'Sundar Pichai',
    'Warren Buffet',
    'Elon Musk',
    'Steve Jobs',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Hero'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 15,
          titleTextStyle: GoogleFonts.alata(fontSize: 20),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: person.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: GestureDetector(
                child: Hero(
                  tag: 'Person $index',
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(person[index]),
                  ),
                ),
                onTap: () {
                  // showDialog(
                  //   context: context,
                  //   builder: (context) => Dialog(
                  //     child: Column(
                  //       mainAxisSize: MainAxisSize.min,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Stack(
                  //           children: [
                  //             GestureDetector(
                  //               onTap: () => secondPage(context, index),
                  //               child: Hero(
                  //                 tag: 'Person $index',
                  //                 child: Image.network(
                  //                   person[index],
                  //                 ),
                  //               ),
                  //             ),
                  //             Container(
                  //               width: 500,
                  //               height: 35,
                  //               padding: EdgeInsets.only(left: 10),
                  //               alignment: Alignment.centerLeft,
                  //               color: Colors.black.withOpacity(0.2),
                  //               child: Text(
                  //                 name[index],
                  //                 style: GoogleFonts.notoSerifDisplay(
                  //                   fontSize: 15,
                  //                   letterSpacing: 1,
                  //                   color: Colors.white,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         Container(
                  //           height: 50,
                  //           color: Colors.black,
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //             children: [
                  //               Icon(
                  //                 Icons.chat,
                  //                 color: Colors.greenAccent,
                  //               ),
                  //               Icon(
                  //                 Icons.call,
                  //                 color: Colors.greenAccent,
                  //               ),
                  //               Icon(
                  //                 Icons.videocam,
                  //                 color: Colors.greenAccent,
                  //               ),
                  //               Icon(
                  //                 Icons.info_outline,
                  //                 color: Colors.greenAccent,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      barrierDismissible: true,
                      opaque: false,
                      maintainState: true,
                      fullscreenDialog:true,
                      pageBuilder: (context, _, __) => Hero(
                        tag: 'Person $index',
                        child: Dialog(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () => secondPage(context, index),
                                    child: Image.network(
                                      person[index],
                                    ),
                                  ),
                                  Container(
                                    width: 500,
                                    height: 35,
                                    padding: EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    color: Colors.black.withOpacity(0.2),
                                    child: Text(
                                      name[index],
                                      style: GoogleFonts.notoSerifDisplay(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                color: Colors.black,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: Colors.greenAccent,
                                    ),
                                    Icon(
                                      Icons.call,
                                      color: Colors.greenAccent,
                                    ),
                                    Icon(
                                      Icons.videocam,
                                      color: Colors.greenAccent,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.greenAccent,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              title: Text(name[index]),
            );
          },
        ),
      ),
    );
  }

  secondPage(BuildContext context, index) {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          body: Center(
            child: Hero(
              tag: 'Person $index',
              child: Image.network(
                person[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          centerTitle: true,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          titleTextStyle: GoogleFonts.abrilFatface(fontSize: 20),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Card(
            shadowColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 25,
            child: Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // color: Colors.black,
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    title: Container(
                      margin: EdgeInsets.only(top: 3),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfDpYQAjsWtr7nfNUX6fZEeXPMNGnZiLrV5w&usqp=CAU'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, top: 25),
                    child: Text(
                      'Username',
                      style: GoogleFonts.aBeeZee(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username Or Email',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Icon(
                          Icons.account_box,
                          size: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: Text(
                      'Password',
                      style: GoogleFonts.aBeeZee(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Icon(
                          Icons.password,
                          size: 20,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Center(
                    heightFactor: 1.5,
                    child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          primary: Colors.orange,
                          elevation: 15),
                    ),
                  ),
                  Center(
                    heightFactor: 0.5,
                    child: TextButton(
                      child: Text('FORGOT PASSWORD'),
                      onPressed: () {},
                    ),
                  ),
                  Center(
                    heightFactor: 5,
                    child: Text('Or Login Using'),
                  ),
                  Center(
                    heightFactor: 0.1,
                    child: ButtonBar(
                      buttonPadding: EdgeInsets.only(left: 50),
                      alignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: Image.network(
                            'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/1024px-Twitter-logo.svg.png',
                            height: 38,
                            width: 38,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

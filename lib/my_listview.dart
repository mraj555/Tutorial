import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text('ListView'),
          centerTitle: true,
          titleTextStyle: GoogleFonts.akayaTelivigala(fontSize: 25),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Card(
              // color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              shadowColor: Colors.red,
              child: Container(
                height: 150,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.blue,
                  // highlightColor: Colors.green,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(20),
                    height: 100,
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.network(
                              'https://www.reliancedigital.in/medias/Apple-iPhone-13-Mini-Smartphones-491997714-i-2-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w5MjE2MnxpbWFnZS9qcGVnfGltYWdlcy9oYWUvaDIyLzk2MzczMTY0NjA1NzQuanBnfGE2YTRlZjc2YjFiNTc2YjI2OGRkOGM5OTVlOTE4ODU3NDg3ZmMwZDE3OWY0OWUwOTUwOTQzZDU0MjU2MjQxNTA'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Apple iPhone 13 Mini 128 GB, \nMidnight (Black)',
                                style: GoogleFonts.amiko(),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child:
                                  Text('Buy Now', style: GoogleFonts.allerta()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // color: Colors.black,
              ),
            ),
            Card(
              // color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              shadowColor: Colors.orange,
              child: Container(
                height: 150,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.green,
                  // highlightColor: Colors.green,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(20),
                    height: 100,
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.network(
                              'https://www.reliancedigital.in/medias/Apple-iPhone-13-Mini-Smartphones-491997714-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMTYxODl8aW1hZ2UvanBlZ3xpbWFnZXMvaDI0L2gzNC85NjM3MzI1OTYzMjk0LmpwZ3wzNDI5ZTA2ZmE2ZDFkMTYxMzA5MjdjMWU2ZTY5ZjgxNjVlNjAyN2QxZmU1MWI2NjEzODIwODA4OTk4ZDllMjVk'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Apple iPhone 13 Mini 256 GB, \nBlack',
                                  style: GoogleFonts.amiko(),
                                ),
                              ),
                              TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Buy Now',
                                  style:
                                      GoogleFonts.allerta(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.orange),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red),
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // color: Colors.black,
              ),
            ),
            Card(
              // color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              shadowColor: Colors.yellow,
              child: Container(
                height: 150,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.blue,
                  // highlightColor: Colors.green,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(20),
                    height: 100,
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.network(
                              'https://www.reliancedigital.in/medias/Apple-iPhone12-Smartphones-491901533-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMTMwMTd8aW1hZ2UvanBlZ3xpbWFnZXMvaDNkL2hjZC85Njc2MzI0OTYyMzM0LmpwZ3w2ZDI4YzQ3YWI0ZWYwMWI0ZGE3NTQ0ODBjYWU2YjdmMGEyYzk2NWMyNTJmZDQxNmRjZTMyZTk3YjFhYzU3ODQ0'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Apple iPhone 12 Mini 128 GB, \nMidnight (Black)',
                                style: GoogleFonts.amiko(),
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.shopping_cart),
                              backgroundColor: Colors.green,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // color: Colors.black,
              ),
            ),
            Card(
              // color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              shadowColor: Colors.green,
              child: Container(
                height: 150,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.black,
                  // highlightColor: Colors.green,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(20),
                    height: 100,
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.network(
                              'https://www.reliancedigital.in/medias/Apple-iPhone-13-Pro-Smartphones-491997732-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyODIyODd8aW1hZ2UvanBlZ3xpbWFnZXMvaGE4L2hlZC85NjM3MjYwMDk5NjE0LmpwZ3w5YjU5NjhkMjM1NjU5NzBlMDI1NGM3MDY1MGYwYzBhODVkZDcyODc5N2Q2ODU1ZGM1OGRiNTU5MTc1NDcxOGNm'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        Text(
                          'Apple iPhone 13 Pro 128 GB, \nSierra Blue',
                          style: GoogleFonts.amiko(),
                        )
                      ],
                    ),
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // color: Colors.black,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              shadowColor: Colors.yellowAccent,
              child: Container(
                height: 150,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.cyanAccent,
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(20),
                    height: 100,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://www.reliancedigital.in/medias/Apple-iPhone-13-Pro-Smartphones-491997732-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyODIyODd8aW1hZ2UvanBlZ3xpbWFnZXMvaGE4L2hlZC85NjM3MjYwMDk5NjE0LmpwZ3w5YjU5NjhkMjM1NjU5NzBlMDI1NGM3MDY1MGYwYzBhODVkZDcyODc5N2Q2ODU1ZGM1OGRiNTU5MTc1NDcxOGNm',
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        'iPhone 13 Pro Max',
                        style: GoogleFonts.amiko(),
                      ),
                      trailing: Column(
                        children: [
                          Expanded(
                            child: InkWell(
                              child: Icon(Icons.arrow_drop_up),
                              onTap: () {},
                            ),
                          ),
                          Expanded(child: Text('1')),
                          Expanded(
                            child: InkWell(
                              child: Icon(Icons.arrow_drop_down),
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

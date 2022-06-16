import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial/SQLlite%20Database/database_helper.dart';

class MyData extends StatefulWidget {
  const MyData({Key? key}) : super(key: key);

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          centerTitle: true,
          title: Text('Data'),
          titleTextStyle: GoogleFonts.zeyada(fontSize: 20),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  int i = await DataBaseHelper.instance
                      .insertData({DataBaseHelper.column_Name: 'ABED'});
                  print('Data Inserted : $i');
                },
                child: Text('Insert'),
              ),
              ElevatedButton(
                onPressed: () async {
                  List data = await DataBaseHelper.instance.getAllData();
                  print('Data : $data');
                },
                child: Text('Show Data'),
              ),
              ElevatedButton(
                onPressed: () async {
                  int ud = await DataBaseHelper.instance.update({
                    DataBaseHelper.column_Id: 1,
                    DataBaseHelper.column_Name: 'XYZ'
                  });
                  print('Update : $ud');
                },
                child: Text('Update'),
              ),
              ElevatedButton(
                onPressed: () async {
                  int id = await DataBaseHelper.instance.delete(2);
                  print('Deleted Id : $id');
                },
                child: Text('Delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

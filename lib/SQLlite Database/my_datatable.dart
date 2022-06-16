import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial/SQLlite%20Database/database_created.dart';

class MyDataTable extends StatefulWidget {
  List<Map<String, dynamic>> data;

  MyDataTable({Key? key, required this.data}) : super(key: key);

  @override
  State<MyDataTable> createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My DataTable'),
          backgroundColor: Colors.black,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          centerTitle: true,
          titleTextStyle: GoogleFonts.archivo(fontSize: 20),
          actions: [
            IconButton(
              onPressed: () async {
                await DatabaseCreated.helper.clear();
                List<Map<String, dynamic>> data = await DatabaseCreated.helper.getAllData();
                setState(
                  () {
                    widget.data = data;
                  },
                );
              },
              icon: Icon(Icons.clear_all),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Column(
                children: [
                  Text(
                    'Students Data',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.play(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  DataTable(
                    headingRowColor:
                        MaterialStateProperty.all(Colors.lightGreen),
                    border: TableBorder.all(color: Colors.black),
                    columns: [
                      DataColumn(
                        label: Center(
                          child: Text('ID'),
                        ),
                      ),
                      DataColumn(
                        label: Center(
                          child: Text('Name'),
                        ),
                      ),
                      DataColumn(
                        label: Center(
                          child: Text('Roll No.'),
                        ),
                      ),
                      DataColumn(
                        label: Center(
                          child: Text('Mobile No.'),
                        ),
                      ),
                      DataColumn(
                        label: Center(
                          child: Text('Actions'),
                        ),
                      ),
                    ],
                    columnSpacing: 22,
                    rows: List.generate(
                      widget.data.length,
                      (index) => DataRow(
                        cells: [
                          DataCell(
                            Center(
                                child: Text(
                                    '${widget.data[index][DatabaseCreated.column_Id]}')),
                          ),
                          DataCell(
                            Center(
                                child: Text(
                                    '${widget.data[index][DatabaseCreated.student_Name]}')),
                          ),
                          DataCell(
                            Center(
                                child: Text(
                                    '${widget.data[index][DatabaseCreated.roll_Number]}')),
                          ),
                          DataCell(
                            Center(
                                child: Text(
                                    '${widget.data[index][DatabaseCreated.mobile_Number]}')),
                          ),
                          DataCell(
                            ConstrainedBox(
                              constraints: BoxConstraints(minWidth: 50),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        updateData(widget.data[index]
                                            [DatabaseCreated.column_Id]);
                                      },
                                      child: Icon(
                                        Icons.edit,
                                        size: 22,
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        int d_id = await DatabaseCreated.helper
                                            .delete(widget.data[index]
                                                [DatabaseCreated.column_Id]);
                                        print(d_id);
                                        List<Map<String, dynamic>> data =
                                            await DatabaseCreated.helper
                                                .getAllData();
                                        setState(
                                          () {
                                            widget.data.remove(widget
                                                    .data[index]
                                                [DatabaseCreated.column_Id]);
                                            widget.data = data;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        size: 22,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  updateData(int id) {
    bool name = false;
    bool roll = false;
    bool phone = false;

    var nameController = TextEditingController();
    var rollController = TextEditingController();
    var phoneController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: StatefulBuilder(
          builder: (context, setState) => Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                  child: Text(
                    'Which Field You Want To Update?',
                    style: GoogleFonts.antic(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 135,
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          value: name,
                          onChanged: (val) {
                            setState(
                              () {
                                name = val!;
                              },
                            );
                          },
                          title: Text('Name'),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 135,
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          value: roll,
                          onChanged: (val) {
                            setState(
                              () {
                                roll = val!;
                              },
                            );
                          },
                          title: Text('Roll No.'),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 135,
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          value: phone,
                          onChanged: (val) {
                            setState(
                              () {
                                phone = val!;
                              },
                            );
                          },
                          title: Text('Mobile'),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: name == true
                      ? TextField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Name',
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.2),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Icon(Icons.account_circle),
                          ),
                        )
                      : null,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: roll == true
                      ? TextField(
                          controller: rollController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Roll No.',
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.2),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Icon(Icons.info),
                          ),
                        )
                      : null,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: phone == true
                      ? TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Mobile',
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.2),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Icon(Icons.phone),
                          ),
                        )
                      : null,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: name == true || roll == true || phone == true
                      ? Center(
                          child: ElevatedButton(
                            onPressed: () async {
                              if (nameController.text.isNotEmpty) {
                                int n = await DatabaseCreated.helper.update(
                                  {
                                    DatabaseCreated.column_Id: id,
                                    DatabaseCreated.student_Name:
                                        nameController.text
                                  },
                                );
                              }
                              if (rollController.text.isNotEmpty) {
                                int r = await DatabaseCreated.helper.update(
                                  {
                                    DatabaseCreated.column_Id: id,
                                    DatabaseCreated.roll_Number:
                                        int.parse(rollController.text)
                                  },
                                );
                              }
                              if (phoneController.text.isNotEmpty) {
                                int p = await DatabaseCreated.helper.update(
                                  {
                                    DatabaseCreated.column_Id: id,
                                    DatabaseCreated.mobile_Number:
                                        int.parse(phoneController.text)
                                  },
                                );
                              }
                              List<Map<String, dynamic>> data =
                                  await DatabaseCreated.helper.getAllData();

                              this.setState(
                                () {
                                  widget.data = data;
                                },
                              );
                              Navigator.pop(context);
                            },
                            child: Text('Update'),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

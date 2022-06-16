import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseCreated {
  DatabaseCreated._();

  static final DatabaseCreated helper = DatabaseCreated._();

  static final database_Name = 'Details.db';
  static final table_Name = 'Details';
  static final column_Id = 'id';
  static final student_Name = 'Name';
  static final roll_Number = 'Roll';
  static final mobile_Number = 'Mobile';

  static Database? database;

  Future<Database> get getDatabase async {
    if (database != null) return database!;

    database = await _initdatabase();
    return database!;
  }

  _initdatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, database_Name);
    return await openDatabase(path, version: 2, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async{
    await db.execute(
        '''CREATE TABLE $table_Name($column_Id INTEGER PRIMARY KEY,$student_Name TEXT NOT NULL,$roll_Number INTEGER,$mobile_Number INTEGER)''');
  }

  Future<int> insert(Map<String, dynamic> data) async {
    Database db = await helper.getDatabase;
    return await db.insert(table_Name, data);
  }

  Future<List<Map<String, dynamic>>> getAllData() async {
    Database db = await helper.getDatabase;
    return await db.query(table_Name);
  }

  Future<int> update(Map<String, dynamic> data) async {
    Database db = await helper.getDatabase;
    int id = data[column_Id];
    return await db.update(
      table_Name,
      data,
      where: '$column_Id = ?',
      whereArgs: [id],
    );
  }

  Future<int> delete(int id) async {
    Database db = await helper.getDatabase;
    return await db.delete(table_Name, where: '$column_Id = ?', whereArgs: [id]);
  }

  Future clear() async {
    Database db = await helper.getDatabase;
    return await db.delete(table_Name);
  }
}

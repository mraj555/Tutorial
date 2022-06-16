import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSupport {
  DatabaseSupport._();

  static final DatabaseSupport support = DatabaseSupport._();

  static final database_Name = 'Details.db';
  static final table_Name = 'Data';
  static final column_id = 'ID';
  static final student_Name = 'Name';
  static final student_Roll = 'Roll';

  static Database? database;

  Future<Database> get getDatabase async {
    if (database != null) return database!;

    database = await _initdatabase();
    return database!;
  }

  _initdatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, database_Name);
    return await openDatabase(path, version: 1, onCreate: onCreate);
  }

  FutureOr<void> onCreate(Database db, int version) async {
    await db.execute('''CREATE TABLE $table_Name($column_id INTEGER PRIMARY KEY,$student_Name TEXT NOT NULL,$student_Roll TEXT NOT NULL)''');
  }

  Future<int> insert(Map<String, dynamic> data) async {
    Database db = await support.getDatabase;
    return await db.insert(table_Name, data);
  }

  Future<List<Map<String, dynamic>>> getAlldata() async {
    Database db = await support.getDatabase;
    return await db.query(table_Name);
  }

  Future<int> update(Map<String, dynamic> data) async {
    Database db = await support.getDatabase;
    int id = data[column_id];
    return await db.update(table_Name, data, where: '$column_id = ?', whereArgs: [id]);
  }

  Future<int> delete(int id) async {
    Database db = await support.getDatabase;
    return await db.delete(table_Name, whereArgs: [id], where: '$column_id = ?');
  }
}

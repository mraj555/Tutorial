import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  DataBaseHelper._();

  static final DataBaseHelper instance = DataBaseHelper._();

  static final database_Name = 'Students.db';
  static final table_Name = 'Info';
  static final column_Id = 'ID';
  static final column_Name = 'Name';

  static Database? database;

  Future<Database> get getDatabase async {
    if (database != null) {
      return database!;
    }

    database = await _initdatabase();
    return database!;
  }

  _initdatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, database_Name);
    print(path);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    await db.execute(
        '''CREATE TABLE $table_Name($column_Id INTEGER PRIMARY KEY,$column_Name TEXT NOT NULL)''');
    print('Created Table');
  }

  Future<int> insertData(Map<String, dynamic> data) async {
    Database db = await instance.getDatabase;
    return await db.insert(table_Name, data);
  }

  Future<List<Map<String, dynamic>>> getAllData() async {
    Database db = await instance.getDatabase;
    return await db.query(table_Name);
  }

  Future<int> update(Map<String, dynamic> data) async {
    Database db = await instance.getDatabase;
    int id = data[column_Id];
    return await db.update(
      table_Name,
      data,
      where: '$column_Id = ?',
      whereArgs: [id],
    );
  }

  Future<int> delete(int id) async {
    Database db = await instance.getDatabase;
    return await db
        .delete(table_Name, where: '$column_Id = ?', whereArgs: [id]);
  }
}

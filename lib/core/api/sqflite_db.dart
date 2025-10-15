import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfliteDb {
  static Database? _db;

  static Future<Database?> get db async {
    if (_db == null) {
      _db = await initDb();
      return _db;
    } else {
      return _db;
    }
  }

  static initDb() async {
    String dataPath = await getDatabasesPath();

    String path = join(dataPath, 'otex.db');

    Database myData = await openDatabase(path, onCreate: _onCreate, version: 1);

    return myData;
  }

  static _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE "plans" (
            "id" INTEGER PRIMARY KEY AUTOINCREMENT,
            "name" TEXT,
            "price" REAL,
            "duration_days" INTEGER,
            "highlight_days" INTEGER,
            "features" TEXT,
            "views_boost" INTEGER,
            "created_at" TEXT
          )
''');
    await db.execute('''
      CREATE TABLE products (
        "id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "category_id" INTEGER,
        "title" TEXT,
        "discountprice" REAL,
        "price" REAL,
        "image_url" TEXT,
        FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE
      )
''');
    await db.execute('''
      CREATE TABLE categories (
        "id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "name" TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE favorites (
        "id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "product_id" INTEGER UNIQUE,
        "is_favorite" INTEGER DEFAULT 1,
         FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
  )
''');
    log("Database Created");
  }

  static Future<List<Map>> selectData(String table) async {
    Database? myDb = await db;
    List<Map> response = await myDb!.query(table);
    return response;
  }

  static Future<int> insertData({
    required String table,
    required Map<String, Object?> values,
  }) async {
    Database? myDb = await db;
    int response = await myDb!.insert(table, values);
    return response;
  }

  static Future<int> updateData({
    required String table,
    required Map<String, Object?> values,
    required String where,
  }) async {
    Database? myDb = await db;
    int response = await myDb!.update(table, values, where: where);
    return response;
  }

  static Future<int> deleteData({
    required String table,
    required String where,
  }) async {
    Database? myDb = await db;
    int response = await myDb!.delete(table, where: where);
    return response;
  }
}

import 'dart:developer';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfliteDb {
  static final SqfliteDb _instance = SqfliteDb._internal();
  factory SqfliteDb() => _instance;
  SqfliteDb._internal();

  static Database? _db;

  static const String productDb = "products";
  static const String plansDb = "plans";
  static const String categoriesDb = "categories";

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    String dataPath = await getDatabasesPath();
    String path = join(dataPath, 'otex.db');

    final db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE plans (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        title TEXT,
        price REAL,
        duration_days INTEGER,
        highlight_days INTEGER,
        features TEXT,
        views_boost INTEGER,
        created_at TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE categories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE products (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        category_id INTEGER,
        title TEXT,
        discountprice REAL,
        price REAL,
        image_url TEXT,
        sale TEXT,
        FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE favorites (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        product_id INTEGER UNIQUE,
        is_favorite INTEGER DEFAULT 1,
        FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
      )
    ''');

    log("Database Created");
  }

  Future<List<Map<String, dynamic>>> selectData(String table) async {
    final db = await database;
    final response = await db.query(table);
    return response;
  }

  Future<int> insertData({
    required String table,
    required Map<String, Object?> values,
  }) async {
    final db = await database;
    return await db.insert(table, values);
  }

  Future<int> updateData({
    required String table,
    required Map<String, Object?> values,
    required String where,
  }) async {
    final db = await database;
    return await db.update(table, values, where: where);
  }

  Future<int> deleteData({required String table, required String where}) async {
    final db = await database;
    return await db.delete(table, where: where);
  }
}

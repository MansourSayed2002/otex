import 'package:otex/core/api/sqflite_db.dart';

class ServiceApp {
 static Future<void> init() async {
    await SqfliteDb.initDb();
  }
}

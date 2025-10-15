import 'package:otex/core/api/sqflite_db.dart';
import 'package:otex/core/constants/plans_list.dart';
import 'package:otex/core/function/add_in_db.dart';

class PackageApi {
  static select(String table) async {
    await addInDb(data: plansList, table: table);
    return await SqfliteDb().selectData(table);
  }
}

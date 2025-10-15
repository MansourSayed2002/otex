import 'package:otex/core/api/sqflite_db.dart';
import 'package:otex/core/constants/product_list.dart';
import 'package:otex/core/constants/sections_list.dart';
import 'package:otex/core/function/add_in_db.dart';

class HomeApi {
  static select(String table) async {
    await addInDb(
      data: table == SqfliteDb.categoriesDb ? subCategotyListName : productList,
      table: table,
    );
    return await SqfliteDb().selectData(table);
  }
}

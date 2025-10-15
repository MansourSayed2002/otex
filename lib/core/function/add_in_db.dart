import 'package:otex/core/api/sqflite_db.dart';
import 'package:otex/features/add_advertisement/data/model/plans_model.dart';
import 'package:otex/features/home/data/model/product_model.dart';
import 'package:otex/features/home/data/model/sub_categoty_model.dart';

Future<void> addInDb({required List data, required String table}) async {
  final db = await SqfliteDb().database;
  final result = await db.rawQuery('SELECT COUNT(*) FROM $table');
  if (result[0]['COUNT(*)'] != 0) return;
  final batch = db.batch();
  for (final item in data) {
    Map<String, Object?> values = {};
    if (item is ProductModel) {
      values = ProductModel.toMap(item);
    } else if (item is SubCategotyModel) {
      values = SubCategotyModel.toJson(item);
    } else if (item is PlansModel) {
      values = PlansModel.toMap(item);
    }
    batch.insert(table, values);
  }
  await batch.commit(noResult: true);
}

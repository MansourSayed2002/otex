import 'dart:developer';

import 'package:otex/core/api/sqflite_db.dart';
import 'package:otex/core/class/api_result.dart';
import 'package:otex/features/add_advertisement/data/api/package_api.dart';
import 'package:otex/features/add_advertisement/data/model/plans_model.dart';

class PackageRepo {
  static Future<ApiResult> getPackages() async {
    try {
      List plans = await PackageApi.select(SqfliteDb.plansDb);
      return ApiSuccess(plans.map((e) => PlansModel.fromMap(e)).toList());
    } catch (e) {
      log(e.toString());
      return ApiFailure(e.toString());
    }
  }
}

import 'dart:developer';
import 'package:otex/core/class/api_result.dart';
import 'package:otex/core/model/sub_categoty_model.dart';
import 'package:otex/features/home/data/api/home_api.dart';
import 'package:otex/features/home/data/model/product_model.dart';

class HomeRepo {
  static getProducts() async {
    try {
      List result = await HomeApi.select('products');
      return ApiSuccess(result.map((e) => ProductModel.fromMap(e)).toList());
    } catch (e) {
      log(e.toString());
      return ApiFailure(e.toString());
    }
  }

  static getCategories() async {
    try {
      List result = await HomeApi.select('categories');
      return ApiSuccess(
        result.map((e) => SubCategotyModel.fromMap(e)).toList(),
      );
    } catch (e) {
      log(e.toString());
      return ApiFailure(e.toString());
    }
  }
}

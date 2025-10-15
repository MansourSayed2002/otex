import 'package:otex/core/constants/text_app.dart';
import 'package:otex/features/filter/data/model/filter_model.dart';

List<FilterModel> houseTypeList = [
  FilterModel(type: TextApp.roomall),
  FilterModel(type: TextApp.townHouse),
  FilterModel(type: TextApp.villa),
  FilterModel(type: TextApp.twinHouse),
];

List<FilterModel> roomTypeList = [
  FilterModel(type: TextApp.room4),
  FilterModel(type: TextApp.room5),
  FilterModel(type: TextApp.roomall),
  FilterModel(type: TextApp.room2),
  FilterModel(type: TextApp.room3),
];

List<FilterModel> paymentTypeList = [
  FilterModel(type: TextApp.any),
  FilterModel(type: TextApp.installment),
  FilterModel(type: TextApp.cash),
];

List<FilterModel> buildingTypeList = [
  FilterModel(type: TextApp.any),
  FilterModel(type: TextApp.ready),
  FilterModel(type: TextApp.underConstruction),
];

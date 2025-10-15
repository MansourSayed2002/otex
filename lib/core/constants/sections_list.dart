import 'package:otex/core/model/sub_categoty_model.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/constants/text_app.dart';

List<String> sectionsList = [
  TextApp.allOffer,
  TextApp.clothes,
  TextApp.accessories,
  TextApp.electronics,
  TextApp.furniture,
];

List<SubCategotyModel> subCategotyListName = [
  SubCategotyModel(name: TextApp.clothes),
  SubCategotyModel(name: TextApp.accessories),
  SubCategotyModel(name: TextApp.electronics),
  SubCategotyModel(name: TextApp.furniture),
];

List<SubCategotyModel> subCategotyList = [
  SubCategotyModel(image: ImageApp.man, name: TextApp.man),
  SubCategotyModel(image: ImageApp.phone, name: TextApp.phones),
  SubCategotyModel(image: ImageApp.watch, name: TextApp.watch),
  SubCategotyModel(image: ImageApp.cosmetics, name: TextApp.cosmetics),
  SubCategotyModel(image: ImageApp.building, name: TextApp.building),
];

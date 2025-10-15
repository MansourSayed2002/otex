import 'dart:convert';

import 'package:otex/features/add_advertisement/data/model/plans_model.dart';

List<PlansModel> plansList = [
  PlansModel(name: "أساسية", price: 30.000, durationDays: 30),
  PlansModel(
    name: "أكسترا",
    price: 30.000,
    durationDays: 30,
    highlightDays: 3,
    features: jsonEncode({
      "keep": "تثبيت فى مقاول صحى( خلال ال48 ساعة القادمة )",
    }),
    viewsBoost: 7,
  ),
  PlansModel(
    name: "بلس",
    title: "أفضل قيمة مقابل سعر",
    price: 30.000,
    durationDays: 30,
    highlightDays: 2,
    features: jsonEncode({
      "keep": "تثبيت فى مقاول صحى( خلال ال48 ساعة القادمة )",
      "world": "ظهور فى كل محافظات مصر",
      "adver": "أعلان مميز",
      "keep2": "تثبيت فى مقاول صحى فى الجهراء",
    }),
    viewsBoost: 18,
  ),
  PlansModel(
    name: "سوبر",
    title: "أعلى مشاهدات",
    price: 30.000,
    durationDays: 30,
    highlightDays: 2,
    features: jsonEncode({
      "keep": "تثبيت فى مقاول صحى( خلال ال48 ساعة القادمة )",
      "world": "ظهور فى كل محافظات مصر",
      "adver": "أعلان مميز",
      "keep2": "تثبيت فى مقاول صحى فى الجهراء",
    }),
    viewsBoost: 24,
  ),
];

import 'dart:convert';

class PlansModel {
  final int? id;
  final String? name;
  final String? title;
  final double? price;
  final int? durationDays;
  final int? highlightDays;
  final String? features;
  final int? viewsBoost;
  final String? createdAt;

  PlansModel({
    this.id,
    this.title,
    this.name,
    this.price,
    this.durationDays,
    this.highlightDays,
    this.features,
    this.viewsBoost,
    this.createdAt,
  });

  factory PlansModel.fromMap(Map<String, dynamic> map) {
    return PlansModel(
      id: map['id'],
      name: map['name'] ?? '',
      title: map['title'] ?? '',
      price: (map['price'] as num).toDouble(),
      durationDays: map['duration_days'] ?? 0,
      highlightDays: map['highlight_days'] ?? 0,
      features: map['features'],
      viewsBoost: map['views_boost'],
      createdAt: map['created_at'],
    );
  }

  static Map<String, dynamic> toMap(PlansModel plan) {
    return {
      'name': plan.name,
      'title': plan.title,
      'price': plan.price,
      'duration_days': plan.durationDays,
      'highlight_days': plan.highlightDays,
      'features': plan.features,
      'views_boost': plan.viewsBoost,
    };
  }
}

stringToMap(String jsonString) {
  Map<String, dynamic> user = jsonDecode(jsonString);
  return user;
}

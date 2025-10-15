class SubCategotyModel {
  String? name;
  String? image;
  SubCategotyModel({this.name, this.image});

  factory SubCategotyModel.fromMap(Map<String, dynamic> map) {
    return SubCategotyModel(name: map['name']);
  }
  static toJson(SubCategotyModel suncategotyModel) {
    return {"name": suncategotyModel.name};
  }
}

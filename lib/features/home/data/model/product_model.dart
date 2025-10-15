class ProductModel {
  int? id;
  String? image;
  String? name;
  int? categoryId;
  String? discountprice;
  String? sale;
  String? price;
  ProductModel({
    this.id,
    this.price,
    this.image,
    this.name,
    this.discountprice,
    this.sale,
    this.categoryId,
  });
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      categoryId: map['category_id'],
      name: map['title'],
      discountprice: map['discountprice'],
      price: map['price'],
      image: map['image_url'],
      sale: map['sale'],
    );
  }
  static Map<String, dynamic> toMap(ProductModel product) {
    return {
      'category_id': product.categoryId,
      'title': product.name,
      'discountprice': product.discountprice,
      'price': product.price,
      'image_url': product.image,
      'sale': product.sale,
    };
  }
}

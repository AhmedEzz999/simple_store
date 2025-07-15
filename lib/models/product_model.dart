class ProductModel {
  final int id;
  final String title;
  num price;
  final String description;
  final String category;
  final String imageSource;
  num rating;
  int ratingCount;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageSource,
    required this.rating,
    required this.ratingCount,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      price: json['price'] ?? 0,
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      imageSource: json['image'] ?? '',
      rating: json['rating']['rate'] ?? 0,
      ratingCount: json['rating']['count'] ?? 0,
    );
  }
}

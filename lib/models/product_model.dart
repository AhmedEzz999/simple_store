class ProductModel {
  final int id;
  String title;
  num price;
  String description;
  final String category;
  String imageSource;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageSource,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      price: json['price'] ?? 0,
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      imageSource: json['image'] ?? 'https://picsum.photos/200',
    );
  }
}

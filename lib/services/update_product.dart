import 'package:simple_store/helper/api.dart';
import 'package:simple_store/models/product_model.dart';

class UpdateProduct {
  final String baseUrl = 'https://fakestoreapi.com/products/';

  Future<ProductModel> updateProduct({
    required String id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    final Map<String, dynamic> json = await Api().put(
      url: "$baseUrl+$id",
      body: {
        "id": id,
        "title": title,
        "price": price,
        "description": desc,
        "image": image,
        "category": category,
      },
    );
    return ProductModel.fromJson(json);
  }
}

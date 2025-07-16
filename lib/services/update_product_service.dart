import 'package:simple_store/helper/api.dart';

class UpdateProductService {
  final String baseUrl = 'https://fakestoreapi.com/products/';

  Future<void> updateProduct({
    required int id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    await Api().put(
      url: "$baseUrl$id",
      body: {
        "title": title,
        "price": price,
        "description": desc,
        "image": image,
        "category": category,
      },
    );
  }
}

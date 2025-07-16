import 'package:simple_store/helper/api.dart';
import 'package:simple_store/models/product_model.dart';

class AddProductService {
  final String baseUrl = 'https://fakestoreapi.com/products';

  Future<ProductModel> addNewProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    final Map<String, dynamic> json = await Api().post(
      url: baseUrl,
      body: {
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

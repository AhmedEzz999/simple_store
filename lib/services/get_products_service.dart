import 'package:simple_store/helper/api.dart';
import 'package:simple_store/models/product_model.dart';

class GetProductsService {
  final String baseUrl = 'https://fakestoreapi.com/products';

  Future<List<ProductModel>> getProducts() async {
    final List<ProductModel> productsList = [];
    final List<dynamic> products = await Api().get(url: baseUrl);
    for (var product in products) {
      productsList.add(ProductModel.fromJson(product));
    }
    return productsList;
  }
}

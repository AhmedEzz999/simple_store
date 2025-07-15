import 'package:simple_store/helper/api.dart';

class CategoriesService {
  final String baseUrl = 'https://fakestoreapi.com/products';

  Future<List<String>> getAllCategories() async {
    final List<String> categoryList = await Api().get(
      url: '$baseUrl/categories',
    );
    return categoryList;
  }
}

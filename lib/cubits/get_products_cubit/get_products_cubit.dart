import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/helper/api.dart';
import 'package:simple_store/models/product_model.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());
  Future<List<ProductModel>> getProduct() async {
    emit(GetProductsLoading());
    const String baseUrl = 'https://fakestoreapi.com/products';
    final List<dynamic> response = await Api().get(url: baseUrl);
    final List<ProductModel> productList = response
        .map((product) => ProductModel.fromJson(product))
        .toList();
    emit(GetProductsSuccess(productList: productList));
    return productList;
  }
}

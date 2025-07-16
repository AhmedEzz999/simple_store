import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/helper/api.dart';
import 'package:simple_store/models/product_model.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());
  final List<ProductModel> _productList = [];

  Future<void> getProduct() async {
    emit(GetProductsLoading());
    final List<dynamic> response = await Api().get();
    for (var product in response) {
      _productList.add(ProductModel.fromJson(product));
    }
    emit(GetProductsSuccess(productList: _productList));
  }

  void refreshProduct() {
    emit(GetProductsSuccess(productList: _productList));
  }
}

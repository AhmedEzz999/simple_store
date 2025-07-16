import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/helper/api.dart';

part 'update_product_state.dart';

class UpdateProductCubit extends Cubit<UpdateProductState> {
  UpdateProductCubit() : super(UpdateProductInitial());

  Future<void> updateProduct({
    required int id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    const String baseUrl = 'https://fakestoreapi.com/products/';

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
    emit(UpdateProductSuccess());
  }
}

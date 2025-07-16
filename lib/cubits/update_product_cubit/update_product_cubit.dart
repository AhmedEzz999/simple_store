import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/services/update_product_service.dart';

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
    await UpdateProductService().updateProduct(
      id: id,
      title: title,
      price: price,
      desc: desc,
      image: image,
      category: category,
    );
    emit(UpdateProductSuccess());
  }
}

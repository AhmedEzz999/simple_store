import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/cubits/update_product_cubit/update_product_cubit.dart';
import 'package:simple_store/models/product_model.dart';
import 'package:simple_store/widgets/update_product_body.dart';

class UpdateProductView extends StatelessWidget {
  final ProductModel product;
  const UpdateProductView({super.key, required this.product});
  static String id = 'update_product_view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateProductCubit(),
      child: BlocListener<UpdateProductCubit, UpdateProductState>(
        listener: (context, state) {
          if (state is UpdateProductSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(milliseconds: 1800),
                content: Text(
                  'Product is updated successfully.',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
            Navigator.pop(context);
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text('Update Product', style: TextStyle(fontSize: 28)),
            centerTitle: true,
          ),
          body: UpdateProductBody(product: product),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simple_store/widgets/update_product_body.dart';

class UpdateProductView extends StatelessWidget {
  const UpdateProductView({super.key});
  static String id = 'update_product_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Update Product', style: TextStyle(fontSize: 28)),
        centerTitle: true,
      ),
      body: const UpdateProductBody(),
    );
  }
}

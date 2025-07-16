import 'package:flutter/material.dart';
import 'package:simple_store/models/product_model.dart';
import 'package:simple_store/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  final List<ProductModel> productList;
  const ProductGridView({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: (MediaQuery.of(context).size.height - 250) / 3,
      ),
      itemCount: productList.length,
      itemBuilder: (context, index) => ProductItem(product: productList[index]),
    );
  }
}

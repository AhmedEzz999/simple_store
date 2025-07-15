import 'package:flutter/material.dart';
import 'package:simple_store/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(children: [Text(product.title)]),
    );
  }
}

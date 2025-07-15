import 'package:flutter/material.dart';
import 'package:simple_store/models/product_model.dart';
import 'package:simple_store/services/get_products.dart';
import 'package:simple_store/widgets/product_item.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({super.key});

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  List<ProductModel> productList = [];

  @override
  void initState() {
    super.initState();
    _getProduct();
  }

  Future<void> _getProduct() async {
    final List<ProductModel> products = await ProductsService().getProducts();
    setState(() {
      productList = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.71,
      ),
      itemCount: productList.length,
      itemBuilder: (context, index) => ProductItem(product: productList[index]),
    );
  }
}

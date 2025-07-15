import 'package:flutter/material.dart';
import 'package:simple_store/models/product_model.dart';
import 'package:simple_store/services/get_products.dart';
import 'package:simple_store/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ProductsService().getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          final List<ProductModel> products = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: (MediaQuery.of(context).size.height - 250) / 3,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) =>
                ProductItem(product: products[index]),
          );
        } else {
          return const Center(
            child: Text(
              'There is an error. Try again later',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
          );
        }
      },
    );
  }
}

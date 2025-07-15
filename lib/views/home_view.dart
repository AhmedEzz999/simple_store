import 'package:flutter/material.dart';
import 'package:simple_store/widgets/product_grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: ProductGridView(),
        ),
      ),
    );
  }
}

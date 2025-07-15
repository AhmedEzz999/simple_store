import 'package:flutter/material.dart';
import 'package:simple_store/widgets/bottom_bar.dart';
import 'package:simple_store/widgets/product_grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('New Trend', style: TextStyle(fontSize: 28)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.shopping_cart, size: 32, color: Colors.black),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: ProductGridView(),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simple_store/views/home_view.dart';
import 'package:simple_store/views/update_product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        UpdateProductView.id: (context) => const UpdateProductView(),
      },
      initialRoute: HomeView.id,
    );
  }
}

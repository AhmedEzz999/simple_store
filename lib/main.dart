import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:simple_store/cubits/update_product_cubit/update_product_cubit.dart';
import 'package:simple_store/models/product_model.dart';
import 'package:simple_store/views/home_view.dart';
import 'package:simple_store/views/update_product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetProductsCubit()),
        BlocProvider(create: (context) => UpdateProductCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          if (settings.name == HomeView.id) {
            return MaterialPageRoute(builder: (context) => const HomeView());
          } else if (settings.name == UpdateProductView.id) {
            final product = settings.arguments as ProductModel;
            return MaterialPageRoute(
              builder: (context) => UpdateProductView(product: product),
            );
          }
          return null;
        },
        initialRoute: HomeView.id,
      ),
    );
  }
}

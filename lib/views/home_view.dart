import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:simple_store/widgets/bottom_bar.dart';
import 'package:simple_store/widgets/product_grid_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'home_view';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final GetProductsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = GetProductsCubit();
    _cubit.getProduct();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

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
      body: BlocProvider.value(
        value: _cubit,
        child: BlocBuilder<GetProductsCubit, GetProductsState>(
          builder: (context, state) {
            if (state is GetProductsSuccess) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),
                child: ProductGridView(productList: state.productList),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

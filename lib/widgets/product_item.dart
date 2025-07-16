import 'package:flutter/material.dart';
import 'package:simple_store/models/product_model.dart';
import 'package:simple_store/views/update_product_view.dart';

class ProductItem extends StatefulWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        UpdateProductView.id,
        arguments: widget.product,
      ),
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.only(left: 6, right: 6, top: 8),
          child: Column(
            children: [
              Image(
                image: NetworkImage(widget.product.imageSource),
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 10),
              Text(
                widget.product.title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${widget.product.price}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

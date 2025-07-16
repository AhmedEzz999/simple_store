import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store/cubits/update_product_cubit/update_product_cubit.dart';
import 'package:simple_store/models/product_model.dart';
import 'package:simple_store/widgets/custom_text_form_fields/description_form_field.dart';
import 'package:simple_store/widgets/custom_text_form_fields/image_form_field.dart';
import 'package:simple_store/widgets/custom_text_form_fields/price_form_field.dart';
import 'package:simple_store/widgets/custom_text_form_fields/title_form_field.dart';
import 'package:simple_store/widgets/update_button.dart';

class UpdateProductBody extends StatefulWidget {
  final ProductModel product;
  const UpdateProductBody({super.key, required this.product});

  @override
  State<UpdateProductBody> createState() => _UpdateProductBodyState();
}

class _UpdateProductBodyState extends State<UpdateProductBody> {
  final GlobalKey<FormState> _updateProductKey = GlobalKey();
  late String price;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _updateProductKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Column(
            spacing: 24,
            children: [
              TitleFormField(
                initialValue: widget.product.title,
                onSaved: (value) {
                  widget.product.title = value!;
                },
              ),
              DescriptionFormField(
                initialValue: widget.product.description,
                onSaved: (value) {
                  widget.product.description = value!;
                },
              ),
              PriceFormField(
                initialValue: widget.product.price,
                onSaved: (value) {
                  price = value!;
                  widget.product.price = num.parse(price);
                },
              ),
              ImageFormField(
                initialValue: widget.product.imageSource,
                onSaved: (value) {
                  widget.product.imageSource = value!;
                },
              ),
              UpdateButton(
                onPressed: () {
                  if (_updateProductKey.currentState!.validate()) {
                    _updateProductKey.currentState!.save();
                    context.read<UpdateProductCubit>().updateProduct(
                      id: widget.product.id,
                      title: widget.product.title,
                      price: widget.product.price.toString(),
                      desc: widget.product.description,
                      image: widget.product.imageSource,
                      category: widget.product.category,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

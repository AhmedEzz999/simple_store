import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Column(
            spacing: 24,
            children: [
              TitleFormField(title: widget.product.title),
              DescriptionFormField(description: widget.product.description),
              PriceFormField(price: widget.product.price),
              ImageFormField(imageSource: widget.product.imageSource),
              const UpdateButton(),
            ],
          ),
        ),
      ),
    );
  }
}

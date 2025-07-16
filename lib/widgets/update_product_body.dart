import 'package:flutter/material.dart';
import 'package:simple_store/widgets/custom_text_form_fields/description_form_field.dart';
import 'package:simple_store/widgets/custom_text_form_fields/image_form_field.dart';
import 'package:simple_store/widgets/custom_text_form_fields/price_form_field.dart';
import 'package:simple_store/widgets/custom_text_form_fields/title_form_field.dart';
import 'package:simple_store/widgets/update_button.dart';

class UpdateProductBody extends StatefulWidget {
  const UpdateProductBody({super.key});

  @override
  State<UpdateProductBody> createState() => _UpdateProductBodyState();
}

class _UpdateProductBodyState extends State<UpdateProductBody> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Column(
            spacing: 24,
            children: [
              TitleFormField(),
              DescriptionFormField(),
              PriceFormField(),
              ImageFormField(),
              UpdateButton(),
            ],
          ),
        ),
      ),
    );
  }
}

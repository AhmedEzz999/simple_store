import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PriceFormField extends StatefulWidget {
  const PriceFormField({super.key});

  @override
  State<PriceFormField> createState() => _PriceFormFieldState();
}

class _PriceFormFieldState extends State<PriceFormField> {
  late TextEditingController _priceController;
  @override
  void initState() {
    super.initState();
    _priceController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _priceController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _priceController,
      maxLines: 1,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
      ],
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Price', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

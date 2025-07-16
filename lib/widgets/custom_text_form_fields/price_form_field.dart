import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PriceFormField extends StatelessWidget {
  final num price;
  const PriceFormField({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: price.toString(),
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

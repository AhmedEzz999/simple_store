import 'package:flutter/material.dart';

class ImageFormField extends StatelessWidget {
  final String imageSource;
  const ImageFormField({super.key, required this.imageSource});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: imageSource,
      maxLines: 1,
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Image URL', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImageFormField extends StatefulWidget {
  const ImageFormField({super.key});

  @override
  State<ImageFormField> createState() => _ImageFormFieldState();
}

class _ImageFormFieldState extends State<ImageFormField> {
  late TextEditingController _imageController;
  @override
  void initState() {
    super.initState();
    _imageController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _imageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _imageController,
      maxLines: 1,
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Image URL', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

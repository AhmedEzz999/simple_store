import 'package:flutter/material.dart';

class DescriptionFormField extends StatelessWidget {
  final String description;
  const DescriptionFormField({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: description,
      maxLines: 3,
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Description', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DescriptionFormField extends StatelessWidget {
  final String description;
  final Function(String?)? onSaved;
  const DescriptionFormField({
    super.key,
    required this.description,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: onSaved,
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

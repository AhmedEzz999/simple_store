import 'package:flutter/material.dart';

class TitleFormField extends StatelessWidget {
  final String initialValue;
  final Function(String?)? onSaved;
  const TitleFormField({
    super.key,
    required this.initialValue,
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
      initialValue: initialValue,
      maxLines: 2,
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Title', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

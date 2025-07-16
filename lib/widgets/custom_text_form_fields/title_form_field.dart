import 'package:flutter/material.dart';

class TitleFormField extends StatelessWidget {
  final String title;
  const TitleFormField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: title,
      maxLines: 2,
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Title', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

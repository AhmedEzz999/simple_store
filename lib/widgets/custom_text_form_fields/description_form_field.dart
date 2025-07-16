import 'package:flutter/material.dart';

class DescriptionFormField extends StatefulWidget {
  const DescriptionFormField({super.key});

  @override
  State<DescriptionFormField> createState() => _DescriptionFormFieldState();
}

class _DescriptionFormFieldState extends State<DescriptionFormField> {
  late TextEditingController _descriptionController;
  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _descriptionController,
      maxLines: 2,
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Description', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

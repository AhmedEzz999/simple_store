import 'package:flutter/material.dart';

class TitleFormField extends StatefulWidget {
  const TitleFormField({super.key});

  @override
  State<TitleFormField> createState() => _TitleFormFieldState();
}

class _TitleFormFieldState extends State<TitleFormField> {
  late TextEditingController _titleController;
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _titleController,
      maxLines: 2,
      style: const TextStyle(fontSize: 24),
      decoration: InputDecoration(
        hint: const Text('Title', style: TextStyle(fontSize: 24)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

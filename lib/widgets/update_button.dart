import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(MediaQuery.of(context).size.width, 55),
      ),
      child: const Text('Update', style: TextStyle(fontSize: 24)),
    );
  }
}

import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> CustomSnackBar(
  BuildContext context,
) {
  return ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      duration: Duration(milliseconds: 1800),
      content: Text(
        'Product is updated successfully.',
        style: TextStyle(fontSize: 24),
      ),
    ),
  );
}

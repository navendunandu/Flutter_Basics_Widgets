import 'package:flutter/material.dart';
import 'package:grid_builder/product_grid.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductGrid(),
    );
  }
}

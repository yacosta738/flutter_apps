import 'package:first_app/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class ProductsOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      body: ProductGrid(),
    );
  }
}

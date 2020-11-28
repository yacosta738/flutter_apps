import 'package:first_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(icon: Icon(Icons.favorite), onPressed: null),
        title: Text(
          product.title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
      ),
    );
  }
}

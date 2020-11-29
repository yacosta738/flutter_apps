import 'package:first_app/providers/products.dart';
import 'package:first_app/widgets/products_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorites, All }

class ProductsOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
            icon: Icon(Icons.more_vert),
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Favorites) {
                productsContainer.showFavoritesOnly();
              } else {
                productsContainer.showAll();
              }
            },
          )
        ],
      ),
      body: ProductGrid(),
    );
  }
}

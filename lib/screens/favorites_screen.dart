import 'package:first_app/models/meal.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  FavoritesScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You have no favorites yet - start adding some!'),
    );
  }
}

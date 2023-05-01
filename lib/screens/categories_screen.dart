import 'package:flutter/material.dart';
import 'package:recipe_app/data/meals_data.dart';
import 'package:recipe_app/models/category.dart';
import 'package:recipe_app/models/meal.dart';
import 'package:recipe_app/screens/meals_screen.dart';
import 'package:recipe_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    required this.toggleFavorite,
    required this.availableMeals
  });
  final void Function(Meal meal) toggleFavorite;
  final List<Meal> availableMeals;
  void _selectedCategory(BuildContext context, Category category) {
    final filteredMeals = availableMeals
        .where((element) => element.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => MealsScreen(
        title: category.title,
        meals: filteredMeals,
        toggleFavorite: toggleFavorite,
      ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3/2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20
    ),
      children: [
        for(final category in availableCategories)
          CategoryGridItem(
            category: category,
            selectedCategory:() {
              _selectedCategory(context, category);
            }
          )
      ],
    );
  }
}

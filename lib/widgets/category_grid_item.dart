import 'package:flutter/material.dart';
import 'package:recipe_app/models/category.dart';


class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    required this.category,
    required this.selectedCategory,
  });

  final Category category;
  final void Function() selectedCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectedCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.45),
              category.color.withOpacity(0.95),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground
          ),
        ),
      ),
    );
  }
}

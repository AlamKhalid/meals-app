import 'package:flutter/material.dart';

import './dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(routeArgs['id']))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, idx) {
          return Text(categoryMeals[idx].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}

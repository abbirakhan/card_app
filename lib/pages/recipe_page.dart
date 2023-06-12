import 'package:card_app/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:card_app/data/recipes_list.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: recipesList.length,
        itemBuilder: (context, index) => HomeCard(
          recipe: recipesList[index],
        ),
      ),
    );
  }
}

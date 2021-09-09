import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghkim_recipes/components/recipe_list_item.dart';
import 'package:ghkim_recipes/components/recipe_menu.dart';
import 'package:ghkim_recipes/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made Coffee"),
            RecipeListItem("pizza", "Made Coffee"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(CupertinoIcons.search, color: Colors.black,),
        SizedBox(width: 15,),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15,),
      ],
    );
  }
}

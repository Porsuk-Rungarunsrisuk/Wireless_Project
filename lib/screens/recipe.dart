import '../model/recipe_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../styles/app_colors.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    var recipe = Provider.of<RecipeProvider>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.whiteshade,
      appBar: AppBar(
        title: const Text("Recipe", style: TextStyle(fontFamily: "Tomorrow", color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white, size: 35),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: recipe.items.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Card(
                color: Colors.white,
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 44,
                      minHeight: 44,
                      maxWidth: 64,
                      maxHeight: 64,
                    ),
                    child: Image.asset("assets/${recipe.items[index].image}", fit: BoxFit.cover),
                  ),
                  onTap: () {recipe.removeItems(recipe.items[index]);},
                  title: Text("\n" + recipe.items[index].name),
                  subtitle: Column(
                      children: [
                        Text(recipe.items[index].description),
                        Text(recipe.items[index].price.toString() + " Baht\n",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ]
                  ),
                  trailing: const Icon(Icons.delete),
                ),
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        Text("Total Price: " + recipe.totalPrice().toString() + " Baht\n",
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
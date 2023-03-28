import 'package:flutter/material.dart';
import 'package:recipes/recipe_detail.dart';
import 'recipe_model.dart';

void main() {
  runApp(const RecipeTestApp());
}

class RecipeTestApp extends StatelessWidget {
  const RecipeTestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  //when user tap!
                  print(Recipe.samples[index].label);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RecipeDetail(
                      recipe: Recipe.samples[index],
                    );
                  }));
                },
                child: recipeCard(Recipe.samples[index]));
          }),
    );
  }

  Widget recipeCard(Recipe recipe) {
    return Card(
      elevation: 2, // 그림자
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // 카드 border redius
      child: Padding(
        // padding 값
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(recipe.label),
            const SizedBox(
              height: 10,
            ),
            Image.asset(recipe.imageUrl),
            const SizedBox(
              height: 10,
            ),
            Text(recipe.label),
          ],
        ),
      ),
    );
  }
}

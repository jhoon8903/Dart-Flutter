import 'package:flutter/material.dart';
import 'package:recipes/recipe_model.dart'; // material is Google // Cupertino is Apple

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  double multiplier = 1; //slider value
  //StatefulWidget 을 위한 Stateful class
  @override
  Widget build(BuildContext context) {
    //todo : implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(widget.recipe.imageUrl),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
              child: Text('INGREDIENTS - 기본 ${widget.recipe.servingSize}인분 기준'),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                      '${(ingredient.quantity * multiplier)} ${ingredient.measure} ${ingredient.name}',
                    );
                  }),
            ),
            Slider(
                value: multiplier,
                label: '${(widget.recipe.servingSize * multiplier).toInt()} 인분', // 슬라이더 라벨
                min: 1,
                max: 10,
                divisions: 9, // 슬라이더 라벨 구간 나누기 (label 과 같이 사용)
                onChanged: (value) {
                  setState(() {
                    multiplier = value;
                  }); // 상태 변경값 적용
                })
          ],
        ),
      ),
    );
  }
}

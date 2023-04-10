import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, top: 60, right: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the day🌮',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

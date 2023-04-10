import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExplorerScreen extends StatelessWidget {
  ExplorerScreen({Key? key}) : super(key: key);

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ExploreData>(
        future: mockService.getExploreData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final todayRecipes = snapshot.data?.todayRecipes ?? [];
              return const TodayRecipeListView();
            }
            return const Text('plz add some data');
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}

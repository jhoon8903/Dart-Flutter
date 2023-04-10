import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/models.dart';

// 레시피 요청/응답을 모방하기 위해 샘플 JSON 데이터를 검색하는 모의 레시피 서비스
class MockFooderlichService {
  // 오늘의 레시피와 친구 피드 모두를 가져오는 일괄 요청
  Future<ExploreData> getExploreData() async {
    final todayRecipes = await _getTodayRecipes();
    final friendPosts = await _getFriendFeed();

    return ExploreData(todayRecipes, friendPosts);
  }

  // UI에 표시할 샘플 탐색 레시피 JSON 가져오기
  Future<List<ExploreRecipe>> _getTodayRecipes() async {
    // API 요청 대기 시간 모방
    await Future.delayed(const Duration(milliseconds: 1000));
    // 파일 시스템에서 JSON 로드
    final dataString =
        await _loadAsset('assets/sample_data/sample_explore_recipes.json');
    // JSON 디코딩
    final Map<String, dynamic> json = jsonDecode(dataString);

    // 각 레시피를 검사하고 JSON을 ExploreRecipe 객체로 변환
    if (json['recipes'] != null) {
      final recipes = <ExploreRecipe>[];
      json['recipes'].forEach((v) {
        recipes.add(ExploreRecipe.fromJson(v));
      });
      return recipes;
    } else {
      return [];
    }
  }

  // UI에 표시할 샘플 친구 게시물 JSON 가져오기
  Future<List<Post>> _getFriendFeed() async {
    // API 요청 대기 시간 모방
    await Future.delayed(const Duration(milliseconds: 1000));
    // 파일 시스템에서 JSON 로드
    final dataString =
        await _loadAsset('assets/sample_data/sample_friends_feed.json');
    // JSON 디코딩
    final Map<String, dynamic> json = jsonDecode(dataString);

    // 각 게시물을 검사하고 JSON을 Post 객체로 변환
    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((v) {
        posts.add(Post.fromJson(v));
      });
      return posts;
    } else {
      return [];
    }
  }

  // UI에 표시할 샘플 레시피 JSON 가져오기
  Future<List<SimpleRecipe>> getRecipes() async {
    // API 요청 대기 시간 모방
    await Future.delayed(const Duration(milliseconds: 1000));
    // 파일 시스템에서 JSON 로드
    final dataString =
        await _loadAsset('assets/sample_data/sample_recipes.json');
    // JSON 디코딩
    final Map<String, dynamic> json = jsonDecode(dataString);

    // 각 레시피를 검사하고 JSON을 SimpleRecipe 객체로 변환
    if (json['recipes'] != null) {
      final recipes = <SimpleRecipe>[];
      json['recipes'].forEach((v) {
        recipes.add(SimpleRecipe.fromJson(v));
      });
      return recipes;
    } else {
      return [];
    }
  }

  // Loads sample json data from file system
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}

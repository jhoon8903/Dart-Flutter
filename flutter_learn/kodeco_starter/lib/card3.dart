import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 410, height: 600),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage('assets/mag2.png'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(16))),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    size: 42,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Recipe Trend',
                      style: FooderlichTheme.darkTextTheme.displayMedium),
                  const SizedBox(
                    height: 30,
                  ),
                  Wrap(
                      alignment: WrapAlignment.start,
                      runSpacing: 4,
                      spacing: 15,
                      children: [
                        Chip(
                            onDeleted: () {
                              print('onDeleted');
                            },
                            label: Text('vegan')),
                        Chip(label: Text('carrot')),
                        Chip(label: Text('vegetable')),
                        Chip(label: Text('diet')),
                        Chip(label: Text('Green')),
                        Chip(label: Text('Health')),
                        Chip(label: Text('Organic')),
                      ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

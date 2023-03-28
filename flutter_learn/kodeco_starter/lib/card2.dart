import 'package:flutter/material.dart';
import 'author_kartz.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  final String category = 'Recipe';
  final String title = 'Smoothie Connoisseur';
  final String description = 'Smoothies';
  final String chef = 'Mike Katz';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(width: 410, height: 600),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              AuthorCard(
                authorName: chef,
                title: title,
                imageProvider: const AssetImage('assets/author_katz.jpeg'),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(description,
                            style: FooderlichTheme.lightTextTheme.displayLarge),
                      ),
                    ),
                    Text(category,
                        style: FooderlichTheme.lightTextTheme.displayMedium)
                  ],
                ),
              )
            ],
          )
          // Icon(
          //   icon,
          // ),
          // Positioned(
          //     top: 11,
          //     left: 5,
          //     child: Container(
          //       constraints: const BoxConstraints.expand(
          //         width: 50,
          //         height: 50,
          //       ),
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(
          //             50,
          //           ),
          //           color: Colors.white),
          //     )),
          // Positioned(
          //   top: 16,
          //   left: 10,
          //   child: Container(
          //     constraints:
          //     const BoxConstraints.expand(width: 40, height: 40),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(50),
          //       image: const DecorationImage(image: AssetImage('assets/author_katz.jpeg'), fit: BoxFit.cover),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   right: 10,
          //   child: Text(
          //     category,
          //     style: FooderlichTheme.lightTextTheme.displayLarge,
          //   ),
          // ),
          // Positioned(
          //   top: 350,
          //   child: Text(
          //     title,
          //     style: FooderlichTheme.lightTextTheme.displayLarge,
          //   ),
          // ),
          // Positioned(
          //   left: 60,
          //   top: 10,
          //   child: Text(
          //     chef,
          //     style: FooderlichTheme.lightTextTheme.titleLarge,
          //   ),
          // ),
          // Positioned(
          //     top: 35,
          //     left: 60,
          //     child: Text(
          //       description,
          //       style: FooderlichTheme.lightTextTheme.titleSmall,
          //     ))
          ),
    );
  }
}

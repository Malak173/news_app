import 'package:flutter/material.dart';
import 'package:news_app_ui/models/category_models.dart';
import 'package:news_app_ui/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModels category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0, bottom: 5),
        child: Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(category.image)),
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

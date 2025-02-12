import 'package:flutter/material.dart';
import 'package:news_app_ui/models/category_models.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});
  
  final CategoryModels category ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
              image:  DecorationImage(
                fit: BoxFit.fill,
                  image: AssetImage(category.image)),
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue),
          child: Center(
              child: Text(
            category.categoryName,
            style: const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          )),
        ),
    );
  }
}
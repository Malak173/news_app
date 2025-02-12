import 'package:flutter/material.dart';
import 'package:news_app_ui/models/category_models.dart';
import 'package:news_app_ui/widgets/category_card.dart';

class CategortListView extends StatelessWidget {
  const CategortListView({
    super.key,
  });
   final List<CategoryModels> categories =const [
    CategoryModels(categoryName: 'Sports', image: 'assets/sports.avif'),
    CategoryModels(categoryName: 'Business', image: 'assets/business.avif'),
    CategoryModels(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModels(categoryName: 'Science', image: 'assets/science.avif'),
    CategoryModels(categoryName: 'Technology', image: 'assets/technology.jpeg'),
    CategoryModels(categoryName: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModels(categoryName: 'General', image: 'assets/general.avif'),
    
   ];
  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,indx){
        return CategoryCard(category:categories[indx],);
      }),
    );
  }
}

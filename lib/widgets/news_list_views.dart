import 'package:flutter/material.dart';
import 'package:news_app_ui/models/articals.dart';
import 'package:news_app_ui/widgets/news_tile.dart';



class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles ;
  
  const NewsListView({super.key,required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        articleModel: articles[index],
      );
    }));
  }
}

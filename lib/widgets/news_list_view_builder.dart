import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui/models/articals.dart';
import 'package:news_app_ui/services/news_servieces.dart';
import 'package:news_app_ui/widgets/news_list_views.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });

  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('opssssss')),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}

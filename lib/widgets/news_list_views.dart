import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui/models/articals.dart';
import 'package:news_app_ui/services/news_servieces.dart';
import 'package:news_app_ui/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticalModel> articales = [];
  @override
  void initState() {
    super.initState();
    getgeneralNews();
  }

  Future<void> getgeneralNews() async {
    articales = await NewsServiece(Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articales.length,
            (context, index) {
      return NewsTile(
        articalModel: articales[index],
      );
    }));
  }
}


import 'package:flutter/material.dart';
import 'package:news_app_ui/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return const NewsTile();
           }));
  }
}
import 'package:flutter/material.dart';
import 'package:news_app_ui/widgets/category_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const CategortListView(),
          Column(
            children: [
              Image.asset('assets/sports.avif'),
              const Text(
                'data',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Text('dataaaaaaaaaa'),
            ],
          )
        ],
      ),
    );
  }
}

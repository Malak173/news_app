import 'package:flutter/material.dart';
import 'package:news_app_ui/models/articals.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.image != null && articleModel.image !.isNotEmpty
             ? Image.network(
              articleModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ) : const Icon(Icons.image_not_supported)),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0,left: 5,right: 5),
          child: Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

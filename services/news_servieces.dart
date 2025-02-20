import 'package:dio/dio.dart';
import 'package:news_app_ui/models/articals.dart';

class NewsServiece {
  final Dio dio ;
  NewsServiece(this.dio);
  getNews() async{
    var response = await dio.get(
      ' https://newsapi.org/v2/top-headlines?country=us&apiKey=b906c938a1e34336b7224293542cb545');
    
    Map<String,dynamic> jsonData = response.data ;
    List<dynamic> articals = jsonData['articals'];
    List <ArticalModel> articalsList = [];
    for (var artical in articals) {
      ArticalModel articalModel = ArticalModel(
       image:artical['urlToImage'],
       subTitle: artical['title'],
       title:artical['description']);

       articalsList.add(articalModel);
    }
    print(response);
  }

}
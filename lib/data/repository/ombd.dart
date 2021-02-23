import 'package:dio/dio.dart';
import 'package:movie_mobx/data/models/video.dart';

class OMDB {
  static Dio dio = Dio();
  Future<Video> search(String querry) async {
    Response response =
        await dio.get("https://www.omdbapi.com/?apikey=bad95150&t=$querry");

    switch (response.statusCode) {
      case 200:
        Map data = response.data;

        List genres = data["Genre"].toString().split(", ");
        List languages = data["Language"].toString().split(", ");

        return Video(
          genres: genres,
          languages: languages,
          plot: data["Plot"],
          posterUrl: data["Poster"],
          released: data["Released"],
          title: data["Title"],
          year: data["Year"],
        );
      default:
        throw Error();
    }
  }
}

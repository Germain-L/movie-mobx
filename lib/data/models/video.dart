import 'package:flutter/foundation.dart';

class Video {
  final String title;
  final String year;
  final String released;
  final List<String> genres;
  final String plot;
  final List<String> languages;
  final String posterUrl;

  Video({
    @required this.title,
    @required this.year,
    @required this.released,
    @required this.genres,
    @required this.plot,
    @required this.languages,
    @required this.posterUrl,
  });
}

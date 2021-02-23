import 'package:flutter/material.dart';
import 'package:movie_mobx/data/repository/ombd.dart';
import 'package:movie_mobx/pages/home.dart';
import 'package:movie_mobx/state/home_state.dart';
import 'package:provider/provider.dart';


void main() async {
    runApp(MyApp());
    OMDB().search("Mr Robot");
    
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => HomeState(),
      child: MaterialApp(
        home: Home()
      ),
    );
  }
}


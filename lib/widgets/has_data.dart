import 'package:flutter/material.dart';
import 'package:movie_mobx/state/home_state.dart';
import 'package:provider/provider.dart';

class HasDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);
    
    return Container(
      child: Column(
        children: [
          Text(state.currentVideo.title),
          Text("languages: ${state.currentVideo.languages}"),
          Text(state.currentVideo.plot),
          Text(state.currentVideo.genres.toString()),
        ],
      ),
    );
  }
}
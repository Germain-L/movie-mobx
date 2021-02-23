import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_mobx/state/home_state.dart';
import 'package:movie_mobx/widgets/appbar.dart';
import 'package:movie_mobx/widgets/has_data.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);


    return Scaffold(
      appBar: AppbarWidget(),
      body: Observer(builder: (_) {
        if (state.state == FutureStates.loaded) {
          return HasDataWidget();
        }

        else if (state.state == FutureStates.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } 

        return Container(
          child: Center(
            child: Text("Search for a movie :)"),
          ),
        );
      }),
    );
  }
}
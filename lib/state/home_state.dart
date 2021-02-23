import 'package:mobx/mobx.dart';
import 'package:movie_mobx/data/models/video.dart';
import 'package:movie_mobx/data/repository/ombd.dart';

part 'home_state.g.dart';

class HomeState = _HomeState with _$HomeState;

enum FutureStates { loading, loaded, off }

abstract class _HomeState with Store {
  static OMDB _omdb = OMDB();

  @observable
  FutureStates state = FutureStates.off;

  @observable
  Video currentVideo;

  @action
  Future<void> search(String querry) async {
    state = FutureStates.loading;

    try {
      Future.delayed(Duration(seconds: 1), () async {
        currentVideo = await _omdb.search(querry);
        state = FutureStates.loaded;
      });
    } catch (e) {
      print("Error occured");
      state = FutureStates.off;
    }
  }
}

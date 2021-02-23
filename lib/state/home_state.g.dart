// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeState on _HomeState, Store {
  final _$stateAtom = Atom(name: '_HomeState.state');

  @override
  FutureStates get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(FutureStates value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$currentVideoAtom = Atom(name: '_HomeState.currentVideo');

  @override
  Video get currentVideo {
    _$currentVideoAtom.reportRead();
    return super.currentVideo;
  }

  @override
  set currentVideo(Video value) {
    _$currentVideoAtom.reportWrite(value, super.currentVideo, () {
      super.currentVideo = value;
    });
  }

  final _$searchAsyncAction = AsyncAction('_HomeState.search');

  @override
  Future<void> search(String querry) {
    return _$searchAsyncAction.run(() => super.search(querry));
  }

  @override
  String toString() {
    return '''
state: ${state},
currentVideo: ${currentVideo}
    ''';
  }
}

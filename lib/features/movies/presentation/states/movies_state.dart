import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';

part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState.initial() = _Initial;

  const factory MoviesState.loading() = _Loading;

  const factory MoviesState.loaded(List<Movie> data) = _Data;

  const factory MoviesState.error(String errorMessage) = _Error;
}

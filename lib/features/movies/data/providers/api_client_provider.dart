import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_flutter/core/utils/constants/constants.dart';
import 'package:movies_flutter/features/movies/data/client/client.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';
import 'package:movies_flutter/features/movies/data/models/genre.dart';
import 'package:movies_flutter/features/movies/data/models/responses/get_genres.dart';
import 'package:movies_flutter/features/movies/data/models/responses/get_movies.dart';

final apiClientProvider = Provider<APIClient>(
  (ref) => APIClient(Dio(
    BaseOptions(
        baseUrl: ApiConstants.baseUrl, contentType: ApiConstants.contentType),
  ) /*.interceptors.add(PrettyDioLogger(
      requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90
    ))*/
      ),
);

final moviesProvider = FutureProvider.autoDispose<List<Movie>>(
  (ref) async {
    final APIClient client = ref.watch(apiClientProvider);

    try {
      MoviesGetResponse response =
          await client.getPopularMovies(ApiConstants.apiKey);
      return response.movies;
    } catch (e) {
      debugPrint(e.toString());
      return <Movie>[];
    }
  },
);

final movieProvider = FutureProvider.autoDispose<Movie>(
  (ref) async {
    final APIClient client = ref.watch(apiClientProvider);

    try {
      Movie response = await client.getMovieById(
          ref.watch(selectedMovieProvider), ApiConstants.apiKey);
      return response;
    } catch (e) {
      return Movie();
    }
  },
);

final genresProvider = FutureProvider.autoDispose<List<Genre>>(
  (ref) async {
    final APIClient client = ref.watch(apiClientProvider);

    try {
      GenresGetResponse response = await client.getGenres(ApiConstants.apiKey);
      return response.genres;
    } catch (e) {
      return <Genre>[];
    }
  },
);

/*final movieProviderTest = FutureProvider.autoDispose<Movie>(
  (ref) async {
    final APIClient client = ref.watch(apiClientProvider);

    try {
      Movie response = await client.getMovieById(0000, ApiConstants.apiKey);
      return response;
    } catch (e) {
      debugPrint(e.toString());
      return Movie();
    }
  },
);*/

final selectedMovieProvider =
    StateNotifierProvider<SelectedMovie, int>((ref) => SelectedMovie());

class SelectedMovie extends StateNotifier<int> {
  SelectedMovie() : super(-1);

  void update(int id) => state = id;
}

/*
final movieProvider = FutureProvider.autoDispose<Movie>((ref) async {
  final APIClient client = ref.watch(apiClientProvider);
  return await client.getMovieById(
      ref.watch(selectedMovieProvider), ApiConstants.apiKey);
});*/

//TEST sa movieState
/*final moviesProviderState = FutureProvider<MoviesState>(
  (ref) async {
    final APIClient client = ref.watch(apiClientProvider);

    try {
      MoviesGetResponse response =
          await client.getPopularMovies(ApiConstants.apiKey);
      return MoviesState.loaded(response.movies);
    } catch (e) {
      debugPrint(e.toString());
      return MoviesState.error(e.toString());
    }
  },
);*/

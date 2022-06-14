import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_flutter/features/movies/data/models/genre.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';
import 'package:movies_flutter/features/movies/presentation/widgets/movies_page/movie_card.dart';

class MoviesList extends ConsumerWidget {
  const MoviesList(
      {super.key,
      required this.movies,
      required this.genres,
      required this.navigateToMovieDetail});
  final List<Movie> movies;
  final List<Genre> genres;
  final Function navigateToMovieDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return movies.isNotEmpty
        ? ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieCard(
                  movie: movies[index],
                  genres: genres,
                  ref: ref,
                  navigateToMovieDetail: navigateToMovieDetail);
            })
        : const Center(child: CircularProgressIndicator());
  }
}

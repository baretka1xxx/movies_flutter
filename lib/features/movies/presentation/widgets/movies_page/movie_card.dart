import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_flutter/core/utils/constants/constants.dart';
import 'package:movies_flutter/features/movies/data/models/genre.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';
import 'package:movies_flutter/features/movies/presentation/widgets/genre_card.dart';
import 'package:movies_flutter/features/movies/presentation/widgets/movies_page/movie_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(
      {Key? key,
      required this.movie,
      required this.genres,
      required this.ref,
      required this.navigateToMovieDetail})
      : super(key: key);
  final Movie movie;
  final WidgetRef ref;
  final Function navigateToMovieDetail;
  final List<Genre> genres;

  @override
  Widget build(BuildContext context) {
    var movieGenres = genres
        .where((element) => movie.genreIds!.contains(element.id))
        .toList();

    return GestureDetector(
      onTap: (() {
        navigateToMovieDetail(context, ref, movie);
      }),
      child: Card(
        color: ColorConstants.darkBlue,
        child: Padding(
          padding: const EdgeInsets.all(UiConstants.paddingMedium),
          child: Row(
            children: [
              MovieImage(imageUrl: movie.posterPath.toString()),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: UiConstants.paddingMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: UiConstants.paddingMedium),
                        child: Text(
                          movie.title ?? "",
                          overflow: TextOverflow.ellipsis,
                          style: StyleConstants.movieTitleDescriptionTextStyle,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star,
                              color: Colors.yellow, size: 14),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                                AppLocalizations.of(context)!
                                    .voteAverage(movie.voteAverage.toString()),
                                style: StyleConstants.ratingTextStyle),
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 30,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: movieGenres.length,
                            itemBuilder: (context, index) {
                              return GenreCard(genre: movieGenres[index]);
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_flutter/core/utils/constants/constants.dart';
import 'package:movies_flutter/features/movies/data/models/genre.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';
import 'package:movies_flutter/features/movies/presentation/widgets/genre_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieDetailDesign extends StatelessWidget {
  const MovieDetailDesign(
      {super.key, required this.movie, required this.navigateToMovies});
  final Movie movie;
  final Function navigateToMovies;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Stack(children: [
        Container(
          width: size.width,
          height: size.height * 0.5,
          decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    NetworkImage(ApiConstants.baseUrlImage + movie.posterPath!),
                fit: BoxFit.cover),
          ),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: GestureDetector(
            onTap: () => {navigateToMovies(context)},
            child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.3),
                child: Image.asset(
                  "images/Vector.png",
                )),
          ),
        )),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: size.height * 0.46),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: ColorConstants.darkBlue),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title!,
                  style: StyleConstants.movieDetailTitleTextStyle,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 14),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                          AppLocalizations.of(context)!
                              .voteAverage(movie.voteAverage.toString()),
                          style: StyleConstants.ratingTextStyle),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: movie.genres?.length,
                      itemBuilder: (context, index) {
                        return GenreCard(
                            genre: movie.genres?[index] ?? Genre());
                      }),
                ),
                const SizedBox(height: 40),
                Text(AppLocalizations.of(context)!.description,
                    style: StyleConstants.movieTitleDescriptionTextStyle),
                const SizedBox(height: 8),
                Text(movie.description!,
                    style: StyleConstants.movieDetailDescriptionTextStyle),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

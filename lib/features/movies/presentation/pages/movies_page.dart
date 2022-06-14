import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_flutter/core/utils/constants/constants.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';
import 'package:movies_flutter/features/movies/data/providers/api_client_provider.dart';
import 'package:movies_flutter/features/movies/presentation/pages/movie_detail_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies_flutter/features/movies/presentation/widgets/movies_page/movies_list.dart';

class MoviesPage extends ConsumerWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          leading: Image.asset("images/img-logo.png"),
          backgroundColor: ColorConstants.darkBlue),
      body: Consumer(
        builder: ((context, ref, child) {
          var moviesState = ref.watch(moviesProvider);
          var genresState = ref.watch(genresProvider);

          return moviesState.when(
              data: ((movies) {
                return genresState.when(
                    data: ((genres) {
                      return MoviesList(
                          movies: movies,
                          genres: genres,
                          navigateToMovieDetail: navigateToMovieDetail);
                    }),
                    error: ((error, stackTrace) =>
                        Text(AppLocalizations.of(context)!.errorOccured)),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()));
              }),
              error: ((error, stackTrace) =>
                  Text(AppLocalizations.of(context)!.errorOccured)),
              loading: () => const Center(child: CircularProgressIndicator()));
        }),
      ),
      backgroundColor: ColorConstants.darkBlue,
    );
  }

  navigateToMovieDetail(BuildContext context, WidgetRef ref, Movie movie) {
    ref.read(selectedMovieProvider.notifier).update(movie.id ?? -1);
    //tu je stavljeno jer se na movieDetail rusi...gdje se to postavlja? i na koji nacin se mijenja title dinamicki nakon dohvata podatkaa?
    //ref.read(titleProvider.notifier).state = movie.title.toString();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MovieDetailPage(),
      ),
    );
  }
}

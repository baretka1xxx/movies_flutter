import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_flutter/features/movies/data/providers/api_client_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies_flutter/features/movies/presentation/widgets/movies_detail_page/movie_detail_design.dart';

class MovieDetailBody extends StatelessWidget {
  const MovieDetailBody({super.key, required this.navigateToMovies});
  final Function navigateToMovies;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        var state = ref.watch(movieProvider);

        return state.when(
            data: ((movie) {
              return MovieDetailDesign(
                  movie: movie, navigateToMovies: navigateToMovies);
            }),
            error: ((error, stackTrace) =>
                Text(AppLocalizations.of(context)!.errorOccured)),
            loading: () => const Center(child: CircularProgressIndicator()));
      }),
    );
  }
}

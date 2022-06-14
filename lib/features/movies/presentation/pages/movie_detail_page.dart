import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_flutter/core/utils/constants/constants.dart';
import 'package:movies_flutter/features/movies/presentation/widgets/movies_detail_page/movie_detail_body.dart';

class MovieDetailPage extends ConsumerWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.darkBlue,
      body: MovieDetailBody(navigateToMovies: navigateToMovies),
    );
  }

  navigateToMovies(BuildContext context) {
    Navigator.of(context).pop();
  }
}

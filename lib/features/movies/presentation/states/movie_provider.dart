
/*class MovieNotifier extends StateNotifier<MoviesState> {
  MovieNotifier({required this.moviesRepository})
      : super(const MoviesState.initial());

  final MoviesRepository moviesRepository;

  Future<void> loadMovies() async {
    state = const MoviesState.loading();

    try {
      final response = await moviesRepository.getMovies("movie/popular");
      final moviesGet = MoviesGetResponse.fromJson(response.data);
      state = MoviesState.loaded(moviesGet.movies);
    } catch (e) {
      state = MoviesState.error(e.toString());
    }
  }
}

final _moviesRepositoryProvider = Provider<MoviesRepository>(
  (ref) => MoviesRepository(),
);

final moviesNotifierProvider =
    StateNotifierProvider<MovieNotifier, MoviesState>(
  (ref) => MovieNotifier(
    moviesRepository: ref.watch(_moviesRepositoryProvider),
  ),
);*/

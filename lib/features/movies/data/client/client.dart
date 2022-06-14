import 'package:dio/dio.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';
import 'package:movies_flutter/features/movies/data/models/responses/get_genres.dart';
import 'package:movies_flutter/features/movies/data/models/responses/get_movies.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

//PITATI JASMINA JEL TU STAVITI BASEUrl ILI KOD RETROFITA
@RestApi()
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  @GET("movie/popular?")
  Future<MoviesGetResponse> getPopularMovies(@Query("api_key") String apiKey);

  @GET("movie/{id}?")
  Future<Movie> getMovieById(
      @Path("id") int id, @Query("api_key") String apiKey);

  @GET("genre/movie/list?")
  Future<GenresGetResponse> getGenres(@Query("api_key") String apiKey);
}

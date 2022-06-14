import 'package:json_annotation/json_annotation.dart';
import 'package:movies_flutter/features/movies/data/models/movie.dart';
part 'get_movies.g.dart';

@JsonSerializable()
class MoviesGetResponse {
  @JsonKey(name: "page")
  int? page;

  @JsonKey(name: "total_pages")
  int? totalPages;

  @JsonKey(name: "total_results")
  int? totalResults;

  @JsonKey(name: "results")
  List<Movie> movies = [];

  MoviesGetResponse();

  factory MoviesGetResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesGetResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MoviesGetResponseToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:movies_flutter/features/movies/data/models/genre.dart';
part 'movie.g.dart';

@JsonSerializable()
class Movie {
  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: "title")
  String? title;

  @JsonKey(name: "overview")
  String? description;

  @JsonKey(name: "vote_average")
  double? voteAverage;

  @JsonKey(name: "poster_path")
  String? posterPath;

  @JsonKey(name: "genre_ids")
  List<int>? genreIds = [];

  @JsonKey(name: "genres")
  List<Genre>? genres = [];

  Movie();

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

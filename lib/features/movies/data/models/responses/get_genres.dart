import 'package:json_annotation/json_annotation.dart';
import 'package:movies_flutter/features/movies/data/models/genre.dart';
part 'get_genres.g.dart';

@JsonSerializable()
class GenresGetResponse {
  @JsonKey(name: "genres")
  List<Genre> genres = [];

  GenresGetResponse();

  factory GenresGetResponse.fromJson(Map<String, dynamic> json) =>
      _$GenresGetResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GenresGetResponseToJson(this);
}

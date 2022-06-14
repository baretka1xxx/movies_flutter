// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie()
  ..id = json['id'] as int?
  ..title = json['title'] as String?
  ..description = json['overview'] as String?
  ..voteAverage = (json['vote_average'] as num?)?.toDouble()
  ..posterPath = json['poster_path'] as String?
  ..genreIds =
      (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList()
  ..genres = (json['genres'] as List<dynamic>?)
      ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.description,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'genre_ids': instance.genreIds,
      'genres': instance.genres,
    };

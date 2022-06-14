// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesGetResponse _$MoviesGetResponseFromJson(Map<String, dynamic> json) =>
    MoviesGetResponse()
      ..page = json['page'] as int?
      ..totalPages = json['total_pages'] as int?
      ..totalResults = json['total_results'] as int?
      ..movies = (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MoviesGetResponseToJson(MoviesGetResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.movies,
    };

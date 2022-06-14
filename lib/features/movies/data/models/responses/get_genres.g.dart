// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_genres.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenresGetResponse _$GenresGetResponseFromJson(Map<String, dynamic> json) =>
    GenresGetResponse()
      ..genres = (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GenresGetResponseToJson(GenresGetResponse instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };

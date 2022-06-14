// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _APIClient implements APIClient {
  _APIClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MoviesGetResponse> getPopularMovies(apiKey) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey};
    final headers = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MoviesGetResponse>(
            Options(method: 'GET', headers: headers, extra: extra)
                .compose(_dio.options, 'movie/popular?',
                    queryParameters: queryParameters, data: data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MoviesGetResponse.fromJson(result.data!);
    return value;
  }

  @override
  Future<Movie> getMovieById(id, apiKey) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey};
    final headers = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<Movie>(
        Options(method: 'GET', headers: headers, extra: extra)
            .compose(_dio.options, 'movie/${id}?',
                queryParameters: queryParameters, data: data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Movie.fromJson(result.data!);
    return value;
  }

  @override
  Future<GenresGetResponse> getGenres(apiKey) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey};
    final headers = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GenresGetResponse>(
            Options(method: 'GET', headers: headers, extra: extra)
                .compose(_dio.options, 'genre/movie/list?',
                    queryParameters: queryParameters, data: data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GenresGetResponse.fromJson(result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

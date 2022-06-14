
/*class MoviesSerivice {
  late Dio _dio;
  //final baseUrl = "https://api.themoviedb.org/3/";
 // final baseUrlImage = "https://image.tmdb.org/t/p/w500";
  //final apiKey = "b8d7f76947904a011286dc732c55234e";

  MoviesSerivice() {
    _dio = Dio(
      BaseOptions(baseUrl: baseUrl),
    );

    initialiteInterceptors();
  }

  Future<Response> getMovies(String endPoint) async {
    Response response;
    String urlPath = "$baseUrl$endPoint?api_key=$apiKey";

    try {
      response = await _dio.get(urlPath);
    } on DioError catch (e) {
      debugPrint(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  Future<Response> getMovieById(String movieId) async {
    Response response;
    String urlPath = "${baseUrl}movie/$movieId?api_key=$apiKey";

    try {
      response = await _dio.get(urlPath);
    } on DioError catch (e) {
      debugPrint(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  initialiteInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint("REQUEST[${options.method}] => PATH: ${options.path}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint(
            "REQUEST[${response.statusCode}] => PATH: ${response.requestOptions.path}");
        return handler.next(response);
      },
      onError: (DioError err, handler) {
        debugPrint(
            "REQUEST[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
        return handler.next(err);
      },
    ));
  }
}*/

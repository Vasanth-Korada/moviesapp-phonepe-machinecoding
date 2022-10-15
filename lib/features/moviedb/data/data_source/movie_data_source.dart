import 'package:movies_app_phonepe/features/moviedb/data/data_source/apis.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/models/popular_movies_res.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'movie_data_source.g.dart';

@RestApi(baseUrl: APIS.baseUrl)
abstract class MovieDataSource{
  factory MovieDataSource(Dio dio, {String baseUrl}) = _MovieDataSource;

  @GET(APIS.getPopularMovies)
  Future<PopularMoviesResModel> getPopularMovies(@Query("api_key") String apiKey);

}
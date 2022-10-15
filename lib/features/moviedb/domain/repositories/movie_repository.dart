import 'package:dartz/dartz.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/models/popular_movies_res.dart';

abstract class MovieRepository{
  Future<Either<String, PopularMoviesResModel>> getPopularMovies(String apiKey);
}
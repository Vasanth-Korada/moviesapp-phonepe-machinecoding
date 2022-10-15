import 'package:dartz/dartz.dart';
import 'package:movies_app_phonepe/features/moviedb/data/data_source/movie_data_source.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/models/popular_movies_res.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/repositories/movie_repository.dart';
import 'package:dio/dio.dart';

import '../../../../../injector.dart';

class MovieRepositoryImpl implements MovieRepository {

  final MovieDataSource _movieDataSource;

  MovieRepositoryImpl(this._movieDataSource);

  @override
  Future<Either<String, PopularMoviesResModel>> getPopularMovies(
      String apiKey) async {
    try {
      dio.options.headers = {
        'Content-Type': 'application/json',
      };
      var response = await _movieDataSource.getPopularMovies(apiKey);
      return Right(response);
    } catch (e) {
      return const Left("Something went wrong!");
    }
  }
}

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app_phonepe/features/moviedb/data/data_source/movie_data_source.dart';
import 'package:movies_app_phonepe/features/moviedb/data/data_source/repositories/movie_repository_impl.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/repositories/movie_repository.dart';
import 'package:movies_app_phonepe/features/moviedb/presentation/controllers/home_controller.dart';
import 'package:dio_logger/dio_logger.dart';
var getIt = GetIt.I;
var dio = Dio();

Future<void> init() async {
  dio.interceptors.add(dioLoggerInterceptor);

  getIt.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getIt()));
  getIt.registerLazySingleton<HomeController>(() => HomeController());
  getIt.registerLazySingleton<MovieDataSource>(() => MovieDataSource(dio));
}

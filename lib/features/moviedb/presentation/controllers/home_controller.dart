import 'package:get/get.dart';
import 'package:movies_app_phonepe/common/constants/constants.dart';
import 'package:movies_app_phonepe/common/widgets/custom_snackbar.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/models/popular_movies_res.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/repositories/movie_repository.dart';
import 'package:movies_app_phonepe/injector.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var movieRepo = getIt.get<MovieRepository>();
  var popularMovies = PopularMoviesResModel().obs;

  @override
  void onInit()async {
    await getPopularMovies();
    super.onInit();
  }

  Future getPopularMovies() async {
    isLoading.value = true;

    final popularMoviesRes = await movieRepo.getPopularMovies(Constants.API_KEY);
    isLoading.value = false;

    popularMoviesRes.fold((l) {
      buildSnackBar(Get.context!, "Unable to get popular movies from API");
    }, (r) {
      if (r.results?.isNotEmpty == true) {
        popularMovies.value = r;
      } else {
        buildSnackBar(Get.context!, "Unable to get popular movies from API");
      }
    });
  }
}

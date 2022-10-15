import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app_phonepe/common/constants/constants.dart';
import 'package:movies_app_phonepe/features/moviedb/presentation/controllers/home_controller.dart';
import 'package:movies_app_phonepe/features/moviedb/presentation/screens/movie_detail_screen.dart';
import 'package:movies_app_phonepe/injector.dart';

class HomeScreen extends GetView {
  var homeController = Get.put(HomeController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Movie Listing"),
        ),
        body: Obx(() {
          return homeController.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount:
                      homeController.popularMovies.value.results?.length ?? 0,
                  itemBuilder: (context, index) {
                    return Obx(() {
                      var movieData =
                          homeController.popularMovies.value.results?[index];
                      return ListTile(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) =>
                                    MovieDetailScreen(movieData!)));
                          },
                          leading: Image.network(
                            "${Constants.baseImgPath}${movieData?.posterPath}",
                          ),
                          title: Text(
                            movieData?.title ?? "",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            movieData?.overview ?? "",
                            style: const TextStyle(color: Colors.grey),
                          )).paddingSymmetric(horizontal: 12, vertical: 6);
                    });
                  },
                );
        }));
  }
}

import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movies_app_phonepe/common/constants/constants.dart';
import 'package:movies_app_phonepe/common/theme/app_text_styles.dart';
import 'package:movies_app_phonepe/features/moviedb/domain/models/popular_movies_res.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends GetView {
  final Results movieDetail;

  const MovieDetailScreen(this.movieDetail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieDetail.title ?? ""),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "${Constants.baseImgPath}${movieDetail.posterPath}",
                width: 150,
              ),
              Column(
                children: [
                  infoColumn(
                    "Release Date",
                    movieDetail.releaseDate ?? "NA",
                  ).paddingSymmetric(vertical: 12),
                  Row(
                    children: [
                      infoColumn(
                        "Rating",
                        movieDetail.voteAverage.toString(),
                      ).paddingSymmetric(vertical: 12),
                    ],
                  ),
                  infoColumn(
                    "Popularity",
                    movieDetail.popularity.toString(),
                  ).paddingSymmetric(vertical: 12),
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 12, vertical: 12),
          //Overview
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Overview",
                style: AppTextStyles.headTextStyle,
              ).paddingSymmetric(horizontal: 12),
              Text(movieDetail.overview ?? "Overview not available")
                  .paddingAll(12)
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16)
        ],
      ).paddingSymmetric(vertical: 12),
    );
  }
}

Widget infoColumn(String title, String value) {
  return Column(
    children: [
      Text(
        title,
        style: AppTextStyles.headTextStyle,
      ),
      Text(value),
    ],
  );
}

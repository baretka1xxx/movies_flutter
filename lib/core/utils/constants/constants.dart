import 'package:flutter/material.dart';

abstract class ApiConstants {
  static const contentType = "application/json";
  static const baseUrl = "https://api.themoviedb.org/3/";
  static const baseUrlImage = "https://image.tmdb.org/t/p/w500";
  static const apiKey = "b8d7f76947904a011286dc732c55234e";
}

abstract class UiConstants {
  static const paddingSmall = 6.0;
  static const paddingMedium = 10.0;
  static const paddingBig = 14.0;
  static const paddingLarge = 26.0;

  static const fontSizeSmall = 15.0;
  static const fontSizeMedium = 20.0;
  static const fontSizeBig = 25.0;

  static const borderSmall = 1.0;
  static const borderMedium = 2.0;
  static const borderBig = 3.0;

  static const imageSizeSmall = 100.0;
  static const imageSizeMedium = 200.0;
  static const imageSizeBigWidth = 375.0;
  static const imageSizeHeight = 335.0;
}

abstract class ColorConstants {
  static const darkBlue = Color(0xFF0E1324);
  static const dirtyWhite = Color(0xFFe4ecef);
  static const orangeBrown = Color(0xFFEC9B3E);
}

abstract class StyleConstants {
  static const movieDetailTitleTextStyle = TextStyle(
      fontFamily: "SfPro",
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: ColorConstants.dirtyWhite);

  static const movieTitleDescriptionTextStyle = TextStyle(
      color: ColorConstants.dirtyWhite,
      fontFamily: "SfPro",
      fontSize: 15,
      fontWeight: FontWeight.w600);

  static const ratingTextStyle = TextStyle(
      color: ColorConstants.dirtyWhite,
      fontFamily: "SfPro",
      fontSize: 12,
      fontWeight: FontWeight.w400);

  static const movieDetailDescriptionTextStyle = TextStyle(
      color: ColorConstants.dirtyWhite,
      fontFamily: "SfPro",
      fontSize: 13,
      fontWeight: FontWeight.w300);
}

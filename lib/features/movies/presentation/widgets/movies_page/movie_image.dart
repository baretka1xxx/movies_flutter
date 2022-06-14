import 'package:flutter/material.dart';
import 'package:movies_flutter/core/utils/constants/constants.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiConstants.imageSizeSmall,
      width: UiConstants.imageSizeSmall,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.network(ApiConstants.baseUrlImage + imageUrl),
      ),
    );
  }
}

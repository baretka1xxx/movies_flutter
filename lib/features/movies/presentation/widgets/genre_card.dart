import 'package:flutter/material.dart';
import 'package:movies_flutter/core/utils/constants/constants.dart';
import 'package:movies_flutter/features/movies/data/models/genre.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({Key? key, required this.genre}) : super(key: key);
  final Genre genre;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: ColorConstants.orangeBrown.withOpacity(0.2),
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
            child: Text(
              genre.name ?? "",
              style: const TextStyle(
                  color: ColorConstants.dirtyWhite,
                  fontFamily: "SfPro",
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ));
  }
}

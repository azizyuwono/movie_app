import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:simple_movie/models/film.dart';

class FilmCard extends StatelessWidget {
  final Film film;
  // ignore: use_key_in_widget_constructors
  const FilmCard(this.film);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            film.imageUrl,
            width: 100,
            height: 127,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              film.title,
              style: titleStyle.copyWith(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              film.genre,
              style: descStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              film.rating,
              width: 98,
            ),
          ],
        )
      ],
    );
  }
}

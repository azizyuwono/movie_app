import 'package:flutter/material.dart';
import 'package:simple_movie/models/film.dart';
import 'package:simple_movie/widgets/film_card.dart';
import 'package:simple_movie/widgets/main_card.dart';
import '../models/card.dart';
import '../theme.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 26,
            left: 20,
            right: 24,
            bottom: 29,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Moviez',
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Watch much easier',
                            style: descStyle,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.search,
                        color: whiteColor,
                        size: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MainCard(
                          Nft(
                              imageUrl: 'assets/cover1.png',
                              title: 'John Wick 4',
                              genre: 'Actions, Crime'),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        MainCard(
                          Nft(
                            imageUrl: 'assets/cover2.png',
                            title: 'Bohemian',
                            genre: 'Documenter',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'From Disney',
                    style: titleStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FilmCard(
                    Film(
                      imageUrl: 'assets/image1.png',
                      title: 'Mulan Session',
                      genre: 'History, Action',
                      rating: 'assets/rate3.png',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FilmCard(
                    Film(
                      imageUrl: 'assets/image2.png',
                      title: 'Beauty & Beast',
                      genre: 'Sci-Fiction',
                      rating: 'assets/rate5.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

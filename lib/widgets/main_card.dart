import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:simple_movie/models/card.dart';

class MainCard extends StatelessWidget {
  final Nft nft;
  // ignore: use_key_in_widget_constructors
  const MainCard(this.nft);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            nft.imageUrl,
            width: 300,
            height: 207,
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nft.title,
                  style: subStyle,
                ),
                Text(
                  nft.genre,
                  style: descStyle,
                ),
              ],
            ),
            const SizedBox(
              width: 87,
            ),
            Image.asset(
              'assets/rate5.png',
              width: 98,
            ),
          ],
        )
      ],
    );
  }
}

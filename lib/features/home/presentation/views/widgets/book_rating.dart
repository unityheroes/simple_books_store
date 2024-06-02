import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_books_store/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFEDD4D),
        ),
        SizedBox(
          width: 6,
        ),
        //rating
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          '(2652)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}

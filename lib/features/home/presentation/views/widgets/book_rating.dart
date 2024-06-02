import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_books_store/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.end});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Icon(
            FontAwesomeIcons.solidStar,
            weight: 14,
            color: Color(0xffFEDD4D),
          ),
        ),
        SizedBox(
          width: 10,
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

import 'package:flutter/material.dart';
import 'package:simple_books_store/core/widgets/custom_bottom.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomBottom(
              text: r'20.99$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CustomBottom(
              text: 'Free Preview',
              backgroundColor: Colors.green,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

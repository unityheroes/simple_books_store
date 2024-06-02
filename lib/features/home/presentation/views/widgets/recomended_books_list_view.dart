import 'package:flutter/material.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/book_item_image.dart';

class RecommendedBooksListView extends StatelessWidget {
  const RecommendedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: BookItemImage(),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/book_item_list_view.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: BookItemListView(),
          );
        },
      ),
    );
  }
}

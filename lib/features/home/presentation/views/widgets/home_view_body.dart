import 'package:flutter/material.dart';

import 'package:simple_books_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/book_List_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        BooksListView(),
      ],
    );
  }
}

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: const BookListViewItem());
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simple_books_store/core/utils/styles.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const BooksListView(),
          Divider(
            height: MediaQuery.of(context).size.height * .05,
            thickness: 1,
            endIndent: (MediaQuery.of(context).size.width / 2) * .5,
            indent: (MediaQuery.of(context).size.width / 2) * .5,
          ),
          const SizedBox(height: 20),
          const Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 20),
          const BestSellerBookItem(),
        ],
      ),
    );
  }
}

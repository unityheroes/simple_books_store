import 'package:flutter/material.dart';
import 'package:simple_books_store/core/utils/styles.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/book_details_buttons.dart';

import 'package:simple_books_store/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/book_rating.dart';

import 'package:simple_books_store/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/recomended_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.2),
                    child: const BookItemImage()),
                const SizedBox(
                  height: 48,
                ),
                //book name
                Text(
                  "The Name Of Book",
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Auther Name",
                  style: Styles.textStyle18.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 36,
                ),
                const BookDetailsButtons(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can also like ',
                    style: Styles.textStyle14.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const RecommendedBooksListView(),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/books_list_view.dart';

import 'package:simple_books_store/features/home/presentation/views/widgets/custom_app_bar.dart';

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

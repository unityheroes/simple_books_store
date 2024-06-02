import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_books_store/constants.dart';
import 'package:simple_books_store/features/home/presentation/views/home_view.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Get.to(const HomeView(),
                  transition: Transition.fadeIn, duration: kTranstionDuration);
            },
            icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {
              Get.to(const HomeView(),
                  transition: Transition.fadeIn, duration: kTranstionDuration);
            },
            icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
}

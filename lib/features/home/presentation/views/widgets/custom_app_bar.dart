import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:simple_books_store/constants.dart';
import 'package:simple_books_store/core/utils/assets_data.dart';
import 'package:simple_books_store/features/search/presentation/views/search_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logoText,
            height: 34,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Get.to(const SearchView(),
                    transition: Transition.fade, duration: kTranstionDuration);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 28,
              )),
        ],
      ),
    );
  }
}

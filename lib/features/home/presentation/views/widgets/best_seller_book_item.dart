import 'package:flutter/material.dart';
import 'package:simple_books_store/core/utils/styles.dart';
import 'package:simple_books_store/features/home/presentation/views/widgets/book_rating.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1641154748135-8032a61a3f80?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // book name
                Text(
                  "lorag lorem loram lorlo is wli asasdasasasfffffffffffffffffffffffffffffffffdeasfasferwerwwaasdwewerwedwq rq",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                // auther name
                const Text(
                  "name auther",
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 4,
                ),
                // price and rating
                Row(
                  children: [
                    Text(
                      r'20.19 $',
                      style: Styles.textStyle20simibold,
                    ),
                    const Expanded(
                      child: BookRating(),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

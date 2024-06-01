import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_books_store/constants.dart';
import 'package:simple_books_store/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}

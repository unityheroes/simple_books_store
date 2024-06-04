import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:simple_books_store/core/errors/failures.dart';
import 'package:simple_books_store/core/utils/api_services.dart';
import 'package:simple_books_store/features/home/models/book/book.model.dart';
import 'package:simple_books_store/features/home/models/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await ApiServices(Dio()).get(
          endPoint:
              'volumes?q=programing&Filtering=free-ebooks&Sorting=newest');

      List<Book> books = [];
      for (var item in data["items"]) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure(errMessage: e.message));
      } else {
        return left(ServerFailure(errMessage: 'Oops, there was an error.'));
      }
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchListBooks() async {
    try {
      var data = await ApiServices(Dio()).get(
          endPoint:
              'volumes?q=programing&Filtering=free-ebooks&Sorting=newest');
      List<Book> books = [];
      for (var item in data["items"]) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure(errMessage: e.message));
      } else {
        return left(ServerFailure(errMessage: 'Oops, there was an error.'));
      }
    }
  }
}

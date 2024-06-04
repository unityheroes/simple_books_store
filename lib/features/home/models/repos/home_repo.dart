import 'package:dartz/dartz.dart';
import 'package:simple_books_store/core/errors/failures.dart';
import 'package:simple_books_store/features/home/models/book/book.model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
  Future<List<Book>> fetchListBooks();
}

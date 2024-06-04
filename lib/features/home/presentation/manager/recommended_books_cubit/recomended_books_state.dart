part of 'recomended_books_cubit.dart';

sealed class RecomendedBooksState extends Equatable {
  const RecomendedBooksState();

  @override
  List<Object> get props => [];
}

final class RecomendedBooksInitial extends RecomendedBooksState {}

final class RecomendedBooksLoading extends RecomendedBooksState {}

final class RecomendedBooksFailure extends RecomendedBooksState {
  final String errorMsg;

  const RecomendedBooksFailure({required this.errorMsg});
}

final class RecomendedBooksSuccess extends RecomendedBooksState {
  final List<Book> books;

  const RecomendedBooksSuccess({required this.books});
}

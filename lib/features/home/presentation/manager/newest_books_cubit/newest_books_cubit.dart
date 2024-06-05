import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simple_books_store/features/home/models/book/book.model.dart';
import 'package:simple_books_store/features/home/models/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchRecomendedBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(errorMsg: failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:simple_books_store/features/home/models/repos/home_repo.dart';
import 'package:simple_books_store/features/home/presentation/manager/recommended_books_cubit/recomended_books_state.dart';

class RecomendedBooksCubit extends Cubit<RecomendedBooksState> {
  RecomendedBooksCubit(super.initialState, this.homeRepo);
  final HomeRepo homeRepo;

  Future<void> fetchRecomendedBooks() async {
    emit(RecomendedBooksLoading());
    var result = await homeRepo.fetchRecomendedBooks();
    result.fold((failure) {
      emit(RecomendedBooksFailure(errorMsg: failure.errMessage));
    }, (books) {
      emit(RecomendedBooksSuccess(books: books));
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simple_books_store/features/home/models/book/book.model.dart';

part 'recomended_books_state.dart';

class RecomendedBooksCubit extends Cubit<RecomendedBooksState> {
  RecomendedBooksCubit() : super(RecomendedBooksInitial());
}

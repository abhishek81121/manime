import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'manga_search_event.dart';
part 'manga_search_state.dart';

class MangaSearchBloc extends Bloc<MangaSearchEvent, MangaSearchState> {
  MangaSearchBloc() : super(MangaSearchInitial()) {
    on<MangaSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

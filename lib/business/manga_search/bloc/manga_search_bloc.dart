import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manime/data/models/manga_search/manga_search.dart';
import 'package:manime/data/repository/manga_search/manga_search_repository.dart';

part 'manga_search_event.dart';
part 'manga_search_state.dart';

class MangaSearchBloc extends Bloc<MangaSearchEvent, MangaSearchState> {
  MangaSearchBloc() : super(MangaSearchInitial()) {
    on<MangaSearchEvent>((event, emit) async {
      emit(MangaSearching());
      Manga manga = await MangaSearchRepository().MangaSearch(event.searchText);
      emit(MangaSearchResult(manga: manga));
    });
  }
}

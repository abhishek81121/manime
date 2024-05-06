part of 'manga_search_bloc.dart';

sealed class MangaSearchEvent extends Equatable {
  final String searchText;
  const MangaSearchEvent({
    required this.searchText,
  });
  @override
  List<Object> get props => [searchText];
}

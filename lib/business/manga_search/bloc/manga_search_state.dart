part of 'manga_search_bloc.dart';

sealed class MangaSearchState extends Equatable {
  const MangaSearchState();

  @override
  List<Object> get props => [];
}

final class MangaSearchInitial extends MangaSearchState {}

final class MangaSearching extends MangaSearchState {}

final class MangaSearchResult extends MangaSearchState {
  final Manga manga;
  const MangaSearchResult({required this.manga});
  @override
  List<Object> get props => [manga];
}

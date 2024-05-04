// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'manga_search_bloc.dart';

// ignore: must_be_immutable
sealed class MangaSearchEvent extends Equatable {
  String searchText;
  MangaSearchEvent({
    required this.searchText,
  });
  @override
  List<Object> get props => [searchText];
}

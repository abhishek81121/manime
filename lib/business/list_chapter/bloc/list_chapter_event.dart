part of 'list_chapter_bloc.dart';

sealed class ListChapterEvent extends Equatable {
  const ListChapterEvent();

  @override
  List<Object> get props => [];
}

class ListChapterEventIntial extends ListChapterEvent {
  final String mangaId;
  final String offset;
  const ListChapterEventIntial({required this.mangaId, required this.offset});
}

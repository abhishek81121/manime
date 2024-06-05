part of 'chapter_images_bloc.dart';

sealed class ChapterImagesState extends Equatable {
  const ChapterImagesState();

  @override
  List<Object> get props => [];
}

final class ChapterImagesInitial extends ChapterImagesState {}

final class ChapterImagesListFetching extends ChapterImagesState {}

final class ChapterImagesListFetched extends ChapterImagesState {
  ChapterImagesMetadata chapterImagesMetadata;
  ChapterImagesListFetched({required this.chapterImagesMetadata});
  @override
  List<Object> get props => [chapterImagesMetadata];
}

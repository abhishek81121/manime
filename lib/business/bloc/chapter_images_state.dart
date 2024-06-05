part of 'chapter_images_bloc.dart';

sealed class ChapterImagesState extends Equatable {
  const ChapterImagesState();

  @override
  List<Object> get props => [];
}

final class ChapterImagesInitial extends ChapterImagesState {}

final class ChapterImagesLoading extends ChapterImagesState {}

final class ChapterImagedFetched extends ChapterImagesState {
  ChapterImagesMetadata chapterImagesMetadata;
  ChapterImagedFetched({required this.chapterImagesMetadata});
  @override
  List<Object> get props => [chapterImagesMetadata];
}

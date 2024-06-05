part of 'chapter_images_bloc.dart';

sealed class ChapterImagesEvent extends Equatable {
  final String chapterId;
  const ChapterImagesEvent({required this.chapterId});
  @override
  List<Object> get props => [];
}

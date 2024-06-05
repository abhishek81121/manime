// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'chapter_images_bloc.dart';

sealed class ChapterImagesEvent extends Equatable {}

class ChapterImagesIntialEvent extends ChapterImagesEvent {
  final String chapterId;
  ChapterImagesIntialEvent({
    required this.chapterId,
  });
  @override
  List<Object> get props => [];
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manime/data/models/chapter_images_metadat/chapter_images_metadata.dart';
import 'package:manime/data/repository/chapter_image/chapter_image_repository.dart';

part 'chapter_images_event.dart';
part 'chapter_images_state.dart';

class ChapterImagesBloc extends Bloc<ChapterImagesEvent, ChapterImagesState> {
  ChapterImagesBloc() : super(ChapterImagesInitial()) {
    on<ChapterImagesEvent>((event, emit) async {
      emit(ChapterImagesLoading());
      ChapterImagesMetadata chapterImagesMetadata =
          await ChapterImageList().getMangaImagesList(event.chapterId);
      emit(ChapterImagedFetched(chapterImagesMetadata: chapterImagesMetadata));
    });
  }
}

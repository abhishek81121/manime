import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manime/data/models/chapter_list/chapter_list.dart';
import 'package:manime/data/repository/list_chapter/list_chapter_repository.dart';

part 'list_chapter_event.dart';
part 'list_chapter_state.dart';

class ListChapterBloc extends Bloc<ListChapterEvent, ListChapterState> {
  ListChapterBloc() : super(ListChapterInitial()) {
    on<ListChapterEvent>((event, emit) {});
    on<ListChapterEventIntial>(
      (event, emit) async {
        emit(ListChapterLoading());
        ListChapter listChapter = await ChapterListSearch()
            .searchChapter(event.mangaId, event.offset);
        print("done");
        emit(ListedChapters(listChapter: listChapter));
      },
    );
  }
}

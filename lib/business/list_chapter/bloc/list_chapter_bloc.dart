import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'list_chapter_event.dart';
part 'list_chapter_state.dart';

class ListChapterBloc extends Bloc<ListChapterEvent, ListChapterState> {
  ListChapterBloc() : super(ListChapterInitial()) {
    on<ListChapterEvent>((event, emit) {});
  }
}

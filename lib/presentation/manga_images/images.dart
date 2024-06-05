import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manime/business/bloc/chapter_images_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

class MangaImages extends StatefulWidget {
  const MangaImages({super.key});

  @override
  State<MangaImages> createState() => _MangaImagesState();
}

class _MangaImagesState extends State<MangaImages> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return BlocProvider(
      create: (context) => ChapterImagesBloc()
        ..add(ChapterImagesIntialEvent(chapterId: arg['chapterId'])),
      child: BlocBuilder<ChapterImagesBloc, ChapterImagesState>(
        builder: (context, state) {
          if (state is ChapterImagesListFetching) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ChapterImagesListFetched) {
            List<String> imagePaths = [];
            num numberOfImages =
                state.chapterImagesMetadata.chapter.data.length;
            for (var i = 0; i < numberOfImages; i++) {
              imagePaths.add(
                  "${state.chapterImagesMetadata.baseUrl}/data/${state.chapterImagesMetadata.chapter.hash}/${state.chapterImagesMetadata.chapter.data[i]}");
            }
            print(imagePaths);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: FadeInImage.memoryNetwork(
                      image: imagePaths[index],
                      placeholder: kTransparentImage,
                    ),
                  );
                },
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

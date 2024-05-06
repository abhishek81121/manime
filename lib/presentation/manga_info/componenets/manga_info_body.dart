import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manime/business/list_chapter/bloc/list_chapter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

class MangaInfoBody extends StatefulWidget {
  final String mangaId;
  final String imageUrl;
  final String title;
  final String description;
  const MangaInfoBody(
      {super.key,
      required this.imageUrl,
      required this.mangaId,
      required this.title,
      required this.description});

  @override
  State<MangaInfoBody> createState() => _MangaInfoBodyState();
}

class _MangaInfoBodyState extends State<MangaInfoBody> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            SizedBox(
              height: height * 0.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage, image: widget.imageUrl),
              ),
            ),
            // SizedBox(
            //   height: height * 0.04,
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(8),
            //       color: const Color.fromARGB(255, 44, 42, 42)),
            //   height: height * 0.15,
            //   width: width,
            //   child: SizedBox(
            //     height: height * 0.15,
            //     width: width,
            //     child: SingleChildScrollView(
            //       child: ListTile(
            //         title: const Text(
            //           "Description :",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         subtitle: Text(
            //           widget.description,
            //           style: const TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: height * 0.04,
            ),
            const Text(
              'CHAPTERS :',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            BlocProvider(
              create: (context) => ListChapterBloc()
                ..add(ListChapterEventIntial(
                    mangaId: widget.mangaId, offset: '0')),
              child: BlocBuilder<ListChapterBloc, ListChapterState>(
                builder: (context, state) {
                  if (state is ListedChapters) {
                    return SizedBox(
                      height: height * 0.5,
                      child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 51, 50, 50),
                                    borderRadius: BorderRadius.circular(8)),
                                height: height * 0.1,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Chapter :${state.listChapter.data[index].attributes.chapter}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: state.listChapter.data.length),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

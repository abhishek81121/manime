import 'package:flutter/material.dart';

class MangaImages extends StatefulWidget {
  const MangaImages({super.key});

  @override
  State<MangaImages> createState() => _MangaImagesState();
}

class _MangaImagesState extends State<MangaImages> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    print(arg['chapterId']);
    return const Placeholder();
  }
}

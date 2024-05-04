import 'package:flutter/material.dart';

class MangaInfoBody extends StatefulWidget {
  final String mangaId;
  final String imageUrl;
  const MangaInfoBody(
      {super.key, required this.imageUrl, required this.mangaId});

  @override
  State<MangaInfoBody> createState() => _MangaInfoBodyState();
}

class _MangaInfoBodyState extends State<MangaInfoBody> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

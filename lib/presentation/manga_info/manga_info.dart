import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:manime/data/models/manga_search/manga_search.dart';
import 'package:manime/data/repository/manga_search/manga_search_repository.dart';
import 'package:manime/presentation/components/appbar.dart';
import 'package:manime/presentation/manga_info/componenets/manga_info_body.dart';
import 'package:transparent_image/transparent_image.dart';

class MangaInfo extends StatefulWidget {
  const MangaInfo({super.key});

  @override
  State<MangaInfo> createState() => _MangaInfoState();
}

class _MangaInfoState extends State<MangaInfo> {
  late final TextEditingController _controller;
  late final focusnode = FocusNode();
  String fileName = "";
  String title = "";
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    focusnode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/logo.png'),
          title: CustomAppBar(
            focusNode: focusnode,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                size: 35,
              ),
              onPressed: () {
                focusnode.requestFocus();
              },
            ),
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: MangaInfoBody(
            imageUrl: arg['ImageUrl'],
            mangaId: arg['MangaId'],
            title: arg['title'],
          ),
        ));
  }
}

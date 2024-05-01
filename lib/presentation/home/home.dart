import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:manime/data/models/manga_search/manga_search.dart';
import 'package:manime/data/repository/manga_search/manga_search_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> onWillPop(BuildContext context) async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actionsAlignment: MainAxisAlignment.spaceAround,
              title: const Text(
                'Are you sure?',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              content: const Text('Do you want to exit the app?',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text(
                    'No',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () => SystemNavigator.pop(),
                  child: const Text(
                    "Yes",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ) ??
          false;
    }

    return PopScope(
        canPop: false,
        onPopInvoked: (bool pop) {
          onWillPop(context);
        },
        child: Scaffold(
          appBar: AppBar(
            leading: Image.asset('assets/logo.png'),
            title: TypeAheadField(
              decorationBuilder: (context, child) {
                return Material(
                  color: const Color.fromARGB(255, 43, 41, 41),
                  type: MaterialType.card,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: child,
                );
              },
              offset: Offset(0, 12),
              constraints: BoxConstraints(maxHeight: 500),
              controller: _controller,
              itemBuilder: (context, value) {
                String fileName;
                for (Relationships rel in value.relationships) {
                  if (rel.type == 'cover_art') {
                    fileName = rel.coverAttributes?.filename ?? 'No Image';
                  }
                }

                return Column(
                  children: [
                    ListTile(
                      isThreeLine: true,
                      // leading: Image.network(
                      //     "https://uploads.mangadex.org/covers/${value.id}/"),
                      title: Text(
                        value.attributes.title?.en ?? "No Title",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ListTileStyle.list,
                      subtitle: Text(
                        value.attributes.description?.en ?? "No Description",
                        style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 2,
                    )
                  ],
                );
              },
              onSelected: (value) {},
              builder: (context, controller, focusNode) {
                return TextField(
                  focusNode: focusNode,
                  controller: controller,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  autofocus: true,
                );
              },
              suggestionsCallback: (search) async {
                Manga manga = await MangaSearchRepository().mangaSearch(search);

                return manga.data;
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home/search');
                },
              ),
            ],
          ),
        ));
  }
}

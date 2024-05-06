import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.all(25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.title,
              maxLines: 2,
              overflow: TextOverflow.fade,
              style: const TextStyle(color: Colors.white, fontSize: 25),
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
            SizedBox(
              height: height * 0.04,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 44, 42, 42)),
              height: height * 0.15,
              width: width,
              child: SingleChildScrollView(
                  child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxHeight: width, minHeight: height * 0.15),
                child: ListTile(
                  title: const Text(
                    "Description :",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    widget.description,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}

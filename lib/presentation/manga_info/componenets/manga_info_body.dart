import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MangaInfoBody extends StatefulWidget {
  final String mangaId;
  final String imageUrl;
  final String title;
  const MangaInfoBody(
      {super.key,
      required this.imageUrl,
      required this.mangaId,
      required this.title});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.title,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          SizedBox(
            height: height * 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage, image: widget.imageUrl),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchManhwa extends StatefulWidget {
  const SearchManhwa({super.key});

  @override
  State<SearchManhwa> createState() => _SearchManhwaState();
}

class _SearchManhwaState extends State<SearchManhwa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/logo.png'),
        title: const TextField(
          style: TextStyle(color: Colors.white, fontSize: 20),
          autofocus: true,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 35,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

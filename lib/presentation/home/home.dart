import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _controller;
  int _lastLength = 0;
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
                    'Yes',
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
              controller: _controller,
              itemBuilder: (context, value) {
                return ListTile(
                  leading: Image.network('https://'),
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
              suggestionsCallback: (search) {},
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

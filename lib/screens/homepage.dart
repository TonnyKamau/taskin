import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.notes_rounded,
              ),
              iconSize: 24.0,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            floating: true,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}

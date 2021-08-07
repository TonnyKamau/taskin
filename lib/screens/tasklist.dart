import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.notes_rounded,
              ),
              iconSize: 24.0,
              onPressed: () {},
            ),
          ),
          floating: true,
          elevation: 0,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, i) => ListTile(
              leading: CircleAvatar(
                child: Text('0'),
              ),
              title: Text('List tile #$i'),
            ),
            childCount: 20,
          ),
        ),
      ],
    );
    
  }
}


import 'package:flutter/material.dart';
import 'package:taskin/screens/add_task.dart';
import 'package:taskin/screens/today_tile.dart';

import '../services/change_theme_button_widget.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              color: Theme.of(context).colorScheme.primary,
              icon: const Icon(
                Icons.notes_rounded,
              ),
              iconSize: 24.0,
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            ListTile(
              title: Text(
                'Taskin',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('Archived'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Text('Change Theme'),
              trailing: ChangeThemeButtonWidget(),
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TODAY',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddTasks()));
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.amber[800],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOMORROW',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddTasks()));
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.amber[800],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

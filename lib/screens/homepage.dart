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
       
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            
            floating: true,
            snap: true,
            title: _bar(context),
            automaticallyImplyLeading: false,
    centerTitle: true,
    titleSpacing: 0,
    backgroundColor: Colors.transparent,
    elevation: 0,
          ),
          const SliverToBoxAdapter(
            child:SizedBox(
              height:24,
            )
          ),

          const SliverToBoxAdapter(
            child:SizedBox(
              height:80,
            )
          ),
        ],
      ),
    );
  }

  Widget _bar(BuildContext context) => Container(
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(24),
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(children: <Widget>[
              const SizedBox(
                width: 20,
              ),
            
     InkWell(
              child: const Icon(Icons.menu),
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
              Expanded(
                  child: Center(
                    child: Text(
                'Search your notes',
                softWrap: false,
              ),
                  )),
              InkWell(
                  child: Icon(isGrid ? Icons.view_list : Icons.view_module),
                  onTap: () => setState(() {
                        isGrid = !isGrid;
                      })),
              const SizedBox(
                width: 18,
              ),
              CircleAvatar(
                child: Icon(Icons.face),
                radius: 17,
              ),
              const SizedBox(
                width: 10,
              )
            ]),
          ),
        ),
      );
}

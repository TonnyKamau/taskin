import 'package:flutter/material.dart';

class TodoLists extends StatelessWidget {
  final List<int> _listData = List<int>.generate(100, (i) => i);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: _listData.map((i) {
          return i % 10 == 0
              ? Container(
                  color: Colors.grey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text("Header",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[800],
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.plus_one_rounded,
                          ),
                          iconSize: 24.0,
                          color: Colors.white,
                          onPressed: () => print('add to list'),
                        ),
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(10.0),
                )
              : ListTile(
                  title: Text("Item $i"),
                );
        }).toList(),
      ),
    );
  }
}

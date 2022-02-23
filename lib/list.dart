import 'dart:developer';

import 'package:flutter/material.dart';

class list extends StatefulWidget {
  list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(_counter.toString())),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print(_counter);

            setState(() {
              _counter = _counter + 1;
            });
          }),
    );
  }
}

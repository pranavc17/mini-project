import 'dart:html';

import 'package:flutter/material.dart';

class second extends StatefulWidget {
  second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  final _textcontroller = TextEditingController();

  String _displaytext = 'text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Builder(builder: (context) {
            return Center(
              child: Container(
                color: Colors.black45,
                child: Column(
                  children: [
                    Column(
                      children: [
                        TextField(
                          controller: _textcontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'type here',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print(_textcontroller.text);

                            setState(() {
                              _displaytext = _textcontroller.text;
                            });
                          },
                          child: Text('ok'),
                        ),
                        Text(_displaytext)
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

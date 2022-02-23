import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/list2.dart';
import 'package:flutter_application_1/second.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: list2(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Login Page'),
          backgroundColor: Colors.black38,
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Text('welcome',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        )),
                    TextButton(
                        onPressed: () {
                          print("text button");
                        },
                        child: Text('click')),
                    ElevatedButton(
                        onPressed: () {
                          print("elevated button");
                        },
                        child: Text('click')),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text('welcome',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      )),
                  TextButton(
                      onPressed: () {
                        print("text button");
                      },
                      child: Text('click')),
                  ElevatedButton(
                      onPressed: () {
                        print("elevated button");
                      },
                      child: Text('click')),
                ],
              ),
            )
          ],
        )));
  }
}

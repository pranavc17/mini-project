import 'package:flutter/material.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
              child: Column(
            children: [
              Container(
                color: Colors.black,
                padding: EdgeInsets.only(left: 200, right: 200, top: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('profile')],
                ),
              )
            ],
          )),
        ));
  }
}

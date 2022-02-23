import 'package:flutter/material.dart';

class ScreenUserView extends StatelessWidget {
  const ScreenUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(child: Text('user view')),
    );
  }
}

import 'package:flutter/material.dart';

class ScreenSellerProfile extends StatefulWidget {
  const ScreenSellerProfile({Key? key}) : super(key: key);

  @override
  State<ScreenSellerProfile> createState() => _ScreenSellerProfileState();
}

class _ScreenSellerProfileState extends State<ScreenSellerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('PROFILE OF SELLER')),
    );
  }
}

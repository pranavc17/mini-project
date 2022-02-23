import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:selo/auth_provider.dart';
import 'package:selo/screens/login_select.dart';
import 'package:provider/provider.dart';
import 'package:selo/screens/posts.dart';
import 'package:selo/screens/sellerform.dart';
import 'package:selo/screens/userpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

Future<bool> CheckLogin() async {
  SharedPreferences prf = await SharedPreferences.getInstance();
  return prf.getBool('isLoggedIn') ?? false;
}

Future<String> CheckType() async {
  SharedPreferences prf = await SharedPreferences.getInstance();
  String? Type = prf.getString('Type');
  return Type!;
}

class _ScreenSplashState extends State<ScreenSplash> {
  // @override
  // void initState() {
  //   // gotoLogin();
  //   super.initState();
  // }
  @override
  void initState() {
    // gotoLogin();
    super.initState();
    // Timer(Duration(seconds:3), (){
    Timer(
        Duration(seconds: 3),
        () => {
              CheckLogin().then((isLogged) => isLogged
                  ? CheckType() == 'seller'
                      ? Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (ctx) {
                          return ScreenPosts();
                        }))
                      : Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (ctx) {
                          return ScreenUserView();
                        }))
                  : Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (ctx) {
                      return Screenloginselect();
                    }))) as bool
            });

    // });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: context.watch<AuthProvider>().stream(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Screenloginselect();
          return Scaffold(
            body: Center(
              child: Image.asset(
                'assets/image/splash.jpg',
                height: 350,
                width: 350,
              ),
            ),
          );
        });
  }
  // Widget build(BuildContext context) {
  //   return StreamBuilder<User?>(
  //     stream: context.watch<AuthProvider>().stream(),
  //     builder: (context, snapshot) {
  //       if(!snapshot.hasData) return Screenloginselect();
  //     builder: (context, snapshot) {
  //       return Scaffold(
  //         body: Center(
  //           child: Image.asset(
  //             'assets/image/splash.jpg',
  //             height: 350,
  //           ),
  //         ),
  //       );
  //     };
  //   );
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  // Future<void> gotoLogin() async {
  //   await Future.delayed(Duration(seconds: 1));
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (ctx) => Screenloginselect(),
  //     ),
  //   );
  // }
}

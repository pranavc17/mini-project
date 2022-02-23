import 'package:flutter/material.dart';
import 'package:selo/screens/loginSeller.dart';
import 'package:selo/screens/loginUser.dart';

class Screenloginselect extends StatelessWidget {
  const Screenloginselect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => ScreenUserLogin()));
              },
              child: Text(
                'User login',
                style: TextStyle(fontSize: 20),
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.blue,
                  fixedSize: Size(200, 50),
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.blue)),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => ScreenSellerLogin()));
                },
                child: Text(
                  'Seller login',
                  style: TextStyle(fontSize: 20),
                ),
                style: OutlinedButton.styleFrom(
                    primary: Colors.blue,
                    fixedSize: Size(200, 50),
                    shape: StadiumBorder(),
                    side: BorderSide(color: Colors.blue)))
          ],
        ),
      ),
    );
  }
}

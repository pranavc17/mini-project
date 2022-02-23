import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:selo/screens/login_select.dart';
import 'package:selo/screens/sellerView.dart';
import 'package:selo/screens/sellerform.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenPosts extends StatefulWidget {
  const ScreenPosts({Key? key}) : super(key: key);

  @override
  State<ScreenPosts> createState() => _ScreenPostsState();
}

class _ScreenPostsState extends State<ScreenPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => ScreenSellerForm()));
        },
        // child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 330, top: 13),
              child: IconButton(
                  onPressed: () {
                    clearData();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => Screenloginselect()));
                  },
                  icon: Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
                  )),
            ),
            Text('Post'),
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("posts").snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                } else {
                  return Expanded(
                    child: ListView(
                      children: snapshot.data!.docs.map((document) {
                        return ListTile(
                          leading: Text(document["Shop name"]),
                          title: Text(document["Adress"]),
                          subtitle: Text(document["number"]),
                          trailing: Text(document["product"]),
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return ScreenSellerView();
                            }));
                          },
                        );
                      }).toList(),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Future<bool> clearData() async {
    SharedPreferences prefe = await SharedPreferences.getInstance();
    return prefe.clear();
  }
}

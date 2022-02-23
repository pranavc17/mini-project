import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ScreenSellerForm extends StatefulWidget {
  const ScreenSellerForm({Key? key}) : super(key: key);

  @override
  State<ScreenSellerForm> createState() => _ScreenSellerFormState();
}

class _ScreenSellerFormState extends State<ScreenSellerForm> {
  CollectionReference post = FirebaseFirestore.instance.collection('posts');
  late String shopname;
  late String adress;
  late String number;
  late String productname;
  late String productdescribe;
  late String price;

  String dropDownValue = "Select catagory";
  var items = ["Select catagory", "Cake", "Pet", "Egg", "Pot"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconButton(
              //     onPressed: () {},
              //     icon: Icon(Icons.arrow_back_ios_new_rounded)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  // SizedBox(
                  //   width: 80,
                  // ),
                  const Text(
                    'Register your shop',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  shopname = value;
                },
                //  controller: _usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'Shopname',
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  // hintText: 'Username',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  adress = value;
                },
                //  controller: _usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.add_location,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'Adress',
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  // hintText: 'Username',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  number = value;
                },
                //  controller: _usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.add_call,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'contact number',
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  // hintText: 'Username',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: Colors.black),
                  child: DropdownButtonFormField(
                    value: dropDownValue,
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.w)
                    // ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    // hint: Text("select"),
                    onChanged: (String? newValue) {
                      // FocusScope.of(context).requestFocus(new FocusNode());
                      setState(() {
                        dropDownValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              TextFormField(
                onChanged: (value) {
                  productname = value;
                },
                //  controller: _usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'Product name ',
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  // hintText: 'Username',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  productdescribe = value;
                },
                //  controller: _usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.playlist_add,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'Product description',
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  // hintText: 'Username',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  price = value;
                },
                //  controller: _usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.money,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'Price',
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  // hintText: 'Username',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      await post.add({
                        'Shop name': shopname,
                        'Adress': dropDownValue,
                        'number': number,
                        'product': productname,
                        'prod.describtion': productdescribe,
                        'Price': int.parse(price),
                      }).then((value) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (ctx) => ScreenSellerForm()));
                      });
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

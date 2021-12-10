


import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fot_test/data/add/product_model.dart';
import 'package:fot_test/ui/home/all_product_screen.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key key}) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController nameCon=TextEditingController();
  final TextEditingController priceCon=TextEditingController();
  final TextEditingController imgCon=TextEditingController();
  FirebaseDatabase database;
  FirebaseApp  app;
  DatabaseReference base;

  void startRealTimeFirebase()async{

    app  =  await Firebase.initializeApp();
    database = FirebaseDatabase(app: app);
    // FirebaseUser firebaseUser= await   FirebaseAuth.instance.currentUser();
    base =database.reference().child("product").child(
        FirebaseAuth.instance.currentUser.uid
    );


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startRealTimeFirebase();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Add Product")),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: nameCon,
                decoration: InputDecoration(

                labelText: "product name"
              ),),
              SizedBox(height: 20,),
              TextField(
                controller: priceCon,
               keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "product price"
              ),),
              SizedBox(height: 20,),
              TextField(
                controller: imgCon,
                keyboardType: TextInputType.text,
                onSubmitted: (img_url) {

                  String name1=nameCon.text.trim();
                  double price1=double.parse(priceCon.text.trim());
                  String url=img_url.trim();

                  ProductModel prduct=ProductModel(
                    name: name1,
                    price: price1,
                    imgUrl: url
                  );


                  showDialog<void>(
                    context: context,
                    barrierDismissible: false,
                    // false = user must tap button, true = tap outside dialog
                    builder: (BuildContext dialogContext) {
                      return AlertDialog(
                        title: Text('Loading....'),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        ),

                      );
                    },
                  );
                  base.push().set(prduct.toJson()).whenComplete(() {

                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("success ")));


                  });






                },
                decoration: InputDecoration(
                    labelText: "image url"
                ),),
              SizedBox(height: 20,),

              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AllProductScreen(),));
              },child: Text("show"),)
            ],
          ),
        ));
  }
}

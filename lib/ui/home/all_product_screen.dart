import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fot_test/ui/home/product_detaitls_screen.dart';
import 'package:fot_test/data/add/product_model.dart';

class AllProductScreen extends StatefulWidget {
  const AllProductScreen({Key key}) : super(key: key);

  @override
  _AllProductScreenState createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> {
  FirebaseDatabase database;
  FirebaseApp  app;
  DatabaseReference base;
  List<ProductModel> allProducts=[];
  bool isStart=true;


  void startRealTimeFirebase()async{

    app  =  await Firebase.initializeApp();
    database = FirebaseDatabase(app: app);
    base =database.reference().child("product").child(
        FirebaseAuth.instance.currentUser.uid
    );

    base.onChildAdded.listen((event) {




       ProductModel p=ProductModel.fromJson(event.snapshot.value);
      allProducts.add(p);
      setState(() {

      });

    }).onDone(() {
      allProducts=allProducts.reversed.toList();

    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startRealTimeFirebase();


  }
  @override
  Widget build(BuildContext context) {
    allProducts=allProducts.reversed.toList();

    return Scaffold(

      appBar: AppBar(title: Text("All Products"),),
        body: SizedBox(
          height: 200,
          width: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ProductDetaitlsScreen(
                  allProducts[index]
                ),));
              },
              child: Container(
                color: Colors.orange.withOpacity(0.5),
                padding: EdgeInsets.all(12),
              child: Column(children: [
                Image.network(allProducts[index].imgUrl,height: 100,width: 200,fit: BoxFit.fill,),
                SizedBox(height: 18,),
                Expanded(

                  child: Row(children: [
                    Text("name : ${allProducts[index].name}"),
                 SizedBox(width: 20,),
                    Text("price : ${allProducts[index].price}")
                  ],),
                )


              ],),),
            )  ;
          },itemCount: allProducts.length,),
        )

    );
  }
}

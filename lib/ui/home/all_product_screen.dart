
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fot_test/data/add/product_model.dart';
import 'package:fot_test/ui/home/product_detaitls_screen.dart';

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
  List<ProductModel> searchList=[];
  bool isStart=true;


  void startRealTimeFirebase()async{
    app  =  await Firebase.initializeApp();

    database = FirebaseDatabase(app: app);
    // FirebaseUser firebaseUser= await   FirebaseAuth.instance.currentUser();

    base =database.reference().child("product").child(
        FirebaseAuth.instance.currentUser.uid

    );

    base.onChildAdded.listen((event) {




       ProductModel p=ProductModel.fromJson(event.snapshot.value);
      allProducts.add(p);
      searchList.add(p);
      setState(() {

      });

    }).onDone(() {


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
    return Scaffold(

        appBar: AppBar(
          title: Text("All Products"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                onChanged: (char) {
                  if (char.isEmpty) {

                    setState(() {
                      allProducts=searchList;
                    });

                  }else
                    {


                      allProducts=[];
                      for(ProductModel model in searchList  )
                        {
                          if (model.name.contains(char)) {
                            allProducts.add(model);

                          }
                        }

                      setState(() {
                      });




                    }



                },
                decoration: InputDecoration(hintText: "search"
                ,
                  suffixIcon: Icon(Icons.search)
                ),


              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ProductDetaitlsScreen(allProducts[(allProducts.length - 1) - index]),
                      ));
                    },
                    child: Container(
                      color: Colors.orange.withOpacity(0.5),
                      padding: EdgeInsets.all(12),
                      child: Container(
                        height: 200,
                        child: Column(
                          children: [
                            Image.network(
                              allProducts[(allProducts.length - 1) - index]
                                  .imgUrl,
                              height: 100,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "name : ${allProducts[(allProducts.length - 1) - index].name}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "price : ${allProducts[(allProducts.length - 1) - index].price}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: allProducts.length,
              ),
            ),
          ],
        )

    );
  }
}

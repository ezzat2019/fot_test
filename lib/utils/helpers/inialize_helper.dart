import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class InalizeHelper{

   void startRealTimeFirebase(FirebaseDatabase database,
      FirebaseApp app, DatabaseReference base)async{

    app  =  await Firebase.initializeApp();
    database = FirebaseDatabase(app: app);
    // FirebaseUser firebaseUser= await   FirebaseAuth.instance.currentUser();
    base =database.reference().child("product").child(
        FirebaseAuth.instance.currentUser.uid
    );


  }

}
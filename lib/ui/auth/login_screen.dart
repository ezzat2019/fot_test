import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fot_test/generated/l10n.dart';
import 'package:fot_test/ui/auth/register_screen.dart';
import 'package:fot_test/ui/home/HomePage.dart';
import 'package:fot_test/ui/home/add/add_screen.dart';
import 'package:fot_test/ui/rating_bar_screen.dart';
import 'package:fot_test/utils/helpers/api_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailCon=TextEditingController();
  bool isArabic=false;
  final TextEditingController passwordCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:isArabic? TextDirection.rtl:TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(title: Text(S.of(context).login),),

          body: Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(
              children: [

                TextField(
                  controller: emailCon,
                  decoration: InputDecoration(
                      labelText: S.of(context).email
                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordCon,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "password"
                  ),

                ),
                SizedBox(height: 200,),

                ElevatedButton(onPressed: () async{
                  
                  
                  ApiHelper.checkIntenretConnection().then((con)  async{
                    
                    if (con) {
                      String email=emailCon.text;
                      String pass=passwordCon.text;



                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email,
                            password: pass
                        );


                        Navigator.of(context).push(MaterialPageRoute(builder:(context) =>  AddScreen()));
                      }   catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                    } else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(S.of(context).noInternetTryGagin)));
                      }
                    
                  });
                  
                  
                

                },child: Text("Login"),),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) =>
                      RegisterScreen(isArabic),));


                },child: Text("register"),),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {
                if (isArabic) {
                  S.load(Locale('en',));
                  setState(() {
                    isArabic=false;
                  });
                }  else
                  {
                    S.load(Locale('ar',));
                    setState(() {
                      isArabic=true;
                    });
                  }


                },child: Text(S.of(context).change),),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {


                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>
                    RatingBarScreen() ,));


                },child: Text("rating bar"),),
                SizedBox(height: 200,),
              ],
            ),
          )),
    );
  }
}

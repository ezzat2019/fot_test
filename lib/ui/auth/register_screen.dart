import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailCon=TextEditingController();
  final TextEditingController passwordCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("register"),),

        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [

              TextField(
                controller: emailCon,
                decoration: InputDecoration(
                 labelText: "email"
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
                String email=emailCon.text;
                String pass=passwordCon.text;

                if (!EmailValidator.validate(email)) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("plz enter correct email")));

                  return;
                }



                if (pass.length<6) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("plz pass > 6")));

                  return;
                }


                try {
                  UserCredential userCredential =
                  await FirebaseAuth.instance.
                  createUserWithEmailAndPassword(
                      email: email,
                      password: pass
                  );

                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("seccuss")));

                  Navigator.of(context).pop();


                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e.toString());
                }








              },child: Text("submit"),),


            ],
          ),
        ));
  }
}

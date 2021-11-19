import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fot_test/ui/auth/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailCon=TextEditingController();
  final TextEditingController passwordCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),

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

                try {
                  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: email,
                      password: pass
                  );


                  print(userCredential.user.email);
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("seccuss")));
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    print('Wrong password provided for that user.');
                  }
                }

              },child: Text("Login"),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>
                    RegisterScreen(),));


              },child: Text("register"),),
              SizedBox(height: 200,),
            ],
          ),
        ));
  }
}

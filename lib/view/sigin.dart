import 'package:climatecast/routes/name_route.dart';
import 'package:climatecast/widget/cust_button.dart';
import 'package:climatecast/widget/cust_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Sigin extends StatefulWidget {
  const Sigin({super.key});

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController cpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Sign up",
                style: TextStyle(fontFamily: 'MainFont', fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Create your account"),
              const SizedBox(
                height: 50,
              ),
              Cust_text(
                controller: name,
                icon: const Icon(Icons.person),
                label: 'Username',
                obscure: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Cust_text(
                controller: email,
                icon: const Icon(Icons.email),
                label: 'Email',
                obscure: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Cust_text(
                controller: pass,
                icon: const Icon(Icons.password),
                label: 'Password',
                obscure: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Cust_text(
                controller: cpass,
                icon: const Icon(Icons.password),
                label: 'Confirm Password',
                obscure: true,
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onPressed: (){
                  googlesignout();
                },
                title: 'Sign up',
                color: Colors.deepPurple,
                textcolor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('or'),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                onPressed: (){
                  googleSigin();
                },
                title: 'Sigin in with Google',
                color: Colors.white,
                textcolor: Colors.deepPurple,
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, RouteName.loginscreen);
                },
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: [
                        TextSpan(text: 'Already have an account?  '),
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(color: Colors.deepPurple))
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void googleSigin()async{
     GoogleSignInAccount? googleSignInAccount=await GoogleSignIn().signIn();
    if(googleSignInAccount!=null){
    GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount.authentication;

    var credential=GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    }
  }
  googlesignout()async{
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  }
}

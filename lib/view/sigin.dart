import 'package:climatecast/routes/name_route.dart';
import 'package:climatecast/view/login.dart';
import 'package:climatecast/widget/cust_button.dart';
import 'package:climatecast/widget/cust_text.dart';
import 'package:flutter/material.dart';

class Sigin extends StatefulWidget {
  const Sigin({super.key});

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
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
                icon: const Icon(Icons.person),
                label: 'Username',
                obscure: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Cust_text(
                icon: const Icon(Icons.email),
                label: 'Email',
                obscure: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Cust_text(
                icon: const Icon(Icons.password),
                label: 'Password',
                obscure: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Cust_text(
                icon: const Icon(Icons.password),
                label: 'Confirm Password',
                obscure: true,
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onPressed: (){},
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
                onPressed: (){},
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
}

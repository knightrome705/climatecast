import 'package:climatecast/view/sigin.dart';
import 'package:flutter/material.dart';

import '../routes/name_route.dart';
import '../widget/cust_button.dart';
import '../widget/cust_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void _loginHome(){
    Navigator.pushReplacementNamed(context, RouteName.bottomscreen);
  }
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
                height: 80,
              ),
              const Column(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontFamily: 'MainFont', fontSize: 30),
                  ),
                  Text("Enter your credential to login")
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Cust_text(
                icon: const Icon(Icons.person),
                label: "User name",
                obscure: false,
              ),
              const SizedBox(
                height: 15,
              ),
              Cust_text(
                icon: const Icon(Icons.password),
                label: "Password",
                obscure: true,
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                onPressed: _loginHome,
                title: 'Login',
                color: Colors.deepPurple,
                textcolor: Colors.white,
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Forgot password?",
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, RouteName.siginscreen);
                },
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: [
                        TextSpan(text: 'Dont have an account? '),
                        TextSpan(
                            text: 'Sigin Up',
                            style: TextStyle(color: Colors.deepPurpleAccent))
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

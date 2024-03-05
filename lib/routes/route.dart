import 'package:climatecast/routes/name_route.dart';
import 'package:climatecast/view/bottom_nav.dart';
import 'package:climatecast/view/login.dart';
import 'package:climatecast/view/sigin.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.siginscreen:
        return MaterialPageRoute(builder: (context) => const Sigin(),);
      case RouteName.loginscreen:
        return MaterialPageRoute(builder: (context) => const Login(),);
      case RouteName.bottomscreen:
        return MaterialPageRoute(builder: (context) => const Bottom(),);
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(body: Center(child: Text("Error"),),),);
    }
  }
}
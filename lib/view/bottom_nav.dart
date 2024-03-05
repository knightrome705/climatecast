import 'package:climatecast/view/home.dart';
import 'package:climatecast/view/settings.dart';
import 'package:flutter/material.dart';
class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
   int currentIndex=0;
   var pages=[Home(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex=value;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:"settings"),
        ],
      ),
    );
  }
}

import 'package:climatecast/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    final value=controller.weatherinfo[0];
    return  Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(value.current!.last_updated_epoch.toString()),
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'location',
                        style: TextStyle(fontFamily: 'MainFont', fontSize: 30),
                      ),
                      Icon(Icons.location_on)
                    ],
                  )
                ],
              ),
             const SizedBox(
                height: 300,
              ),
              const Text('26*',style: TextStyle(fontSize: 90,fontWeight: FontWeight.w900),),
              const SizedBox(
                height: 5,
              ),
              const Text('clear',style: TextStyle(color: Colors.red,fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}

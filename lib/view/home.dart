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
    return  Scaffold(
      backgroundColor: Colors.grey.shade300,
      body:  SafeArea(
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
                  // Obx(()=> Text(controller.data.value?.location.region??"null")),
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
             // Obx(()=> Image.network('https:${controller.data.value?.current.condition.icon}')),
             // const SizedBox(
             //    height: 300,
             //  ),
             //  Obx(()=> Text('${controller.data.value!.current.tempC}°C',style: const TextStyle(fontSize: 90,fontWeight: FontWeight.w900),)),
              const SizedBox(
                height: 5,
              ),
              // Obx(()=> Text(controller.data.value?.current.condition.text??"nodata",style: const TextStyle(color: Colors.red,fontSize: 20),)),
              const SizedBox(
                height: 20,
              ),
               // Obx(()=> Text('${controller.data.value!.current.tempF}°F',style: const TextStyle(fontSize: 90,fontWeight: FontWeight.w900),)),
              const SizedBox(
                height: 20,
              ),
              // Obx(()=> Text(controller.data.value!.current.lastUpdated,style: const TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}

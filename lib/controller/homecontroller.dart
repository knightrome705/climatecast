import 'dart:convert';

import 'package:climatecast/constants/weatherkey.dart';
import 'package:climatecast/models/weathermodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class HomeController extends GetxController{
  var weatherinfo=<Weather>[].obs;
  Uri url=Uri.parse('$weatherapi&key=$weatherkey');
   Future<void> getCurrentWeather()async{
     var response=await http.get(url);
     if(response.statusCode==200){
       var data=Weather.fromJson(jsonDecode(response.body));
       print(data.current!.temp_f);
       if(data!=null){
         weatherinfo.add(data);
         print(weatherinfo);
       }
     }else{
       Get.snackbar("title", 'error');
     }
   }
   @override
  void onInit() {
    getCurrentWeather();
    super.onInit();
  }
}
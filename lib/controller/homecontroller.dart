
import 'package:climatecast/constants/weatherkey.dart';
import 'package:climatecast/services/weatherdata.dart';
import 'package:get/get.dart';

import '../models/weathermodel.dart';


class HomeController extends GetxController{
  var data = Rxn<Weather>();
   Future<void> getCurrentWeather()async{
   var weather=await WheatherServices.getWheatherData();
   if(weather!=null){
     print(weather.runtimeType);
   data.value=weather;
   print(data.value);
   }
   }
   @override
  void onInit() {
    getCurrentWeather();
    super.onInit();
  }
}
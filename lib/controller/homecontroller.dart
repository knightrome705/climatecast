
import 'package:climatecast/constants/weatherkey.dart';
import 'package:climatecast/models/weathermodel.dart';
import 'package:climatecast/services/weatherdata.dart';
import 'package:get/get.dart';


class HomeController extends GetxController{
  var data=Weather().obs;
  Uri url=Uri.parse('$weatherapi&key=$weatherkey');
   Future<void> getCurrentWeather()async{
   var weather=await WheatherServices.getWheatherData();
   if(weather!=null){
   data.value=weather;
   }
   }
   @override
  void onInit() {
    getCurrentWeather();
    super.onInit();
  }
}
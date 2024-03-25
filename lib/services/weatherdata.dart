import 'package:climatecast/models/weathermodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class WheatherServices{
 static var client=http.Client();

  static Future<dynamic> getWheatherData()async{
    var response=await client.get(Uri.parse('https://api.weatherapi.com/v1/current.json?q=kannur&key=61b4a2d4296240e6b3a113030242502'));
    if(response.statusCode==200){
      var jsondata=response.body;
      print(jsondata);
      return weatherFromJson(jsondata);
    }else{
   Get.snackbar('error',response.statusCode.toString());
   return null;
    }
  }
}
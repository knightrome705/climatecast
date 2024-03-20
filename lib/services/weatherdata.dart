import 'package:climatecast/models/weathermodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class WheatherServices{
 static var client=http.Client();

  static Future<Weather?> getWheatherData()async{
    var response=await client.get(Uri.parse('https://newsapi.org/v2/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad'));
    if(response.statusCode==200){
      var jsondata=response.body;
      return weatherFromJson(jsondata);
    }else{
   Get.snackbar('error',response.statusCode.toString());
   return null;
    }
  }
}
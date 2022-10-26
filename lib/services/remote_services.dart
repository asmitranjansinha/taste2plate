import 'package:taste2plate/models/tastestoplate.dart';
import 'package:http/http.dart' as http;

class RemoteService {
    late Future Tastestoplate; getTastestoplate() async{
    var client = http.Client();

    var uri = Uri.parse("https://webapi.tastes2plate.com/app/home");
    var response = await client.get(uri);
    if(response.statusCode == 200){
      var json = response.body;
      return tastestoplateFromJson(json);
    }
  }
}
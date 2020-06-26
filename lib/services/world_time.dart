import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String place; 
  String clock;
  String flag;
  String url;

  WorldTime({
    this.place, this.flag, this.url
  });

  Future<void> getWatch() async {
    String apiUrl = 'http://worldtimeapi.org/api/timezone/$url';
    Response response = await get(apiUrl);
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    //print('$datetime and $offset');

    DateTime now = DateTime.parse(datetime);
    now =  now.add(Duration(hours: int.parse(offset)));
    clock = now.toString();
  }
  

}



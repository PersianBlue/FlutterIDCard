// ignore_for_file: avoid_print

import "package:http/http.dart";
import "dart:convert";
import "package:intl/intl.dart";

class WorldTime {
  String location = ""; //the location to show on screen
  String? time = ""; //the time in that location
  String flag = ""; //url to api flag endpoint
  String url = ""; //location url for api endpoint
  bool isDayTime = true; //true or false if daytime or not

  WorldTime(
      {required this.location,
      this.time,
      required this.flag,
      required this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(Uri(
          scheme: "http", host: "worldtimeapi.org", path: "api/timezone/$url"));

      Map data = jsonDecode(response.body);
      //get property from data
      String datetime = data['datetime'];
      // Create DateTime object
      DateTime now = DateTime.parse(datetime);

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      //set the time property
      time = DateFormat.jm().format(now);
      // print(time);
    } catch (e) {
      print("Error! $e ");
      time = "{Error: Could not get time data}";
    }
  }
}

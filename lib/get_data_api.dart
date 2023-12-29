import 'dart:convert';
import 'package:flutter_application_15/model.dart';
import 'package:http/http.dart' as http;
//? list of cities
// https://api.keybit.ir/owghat/?showlist
//?Owghat uniqu city
//https://api.keybit.ir/owghat/?city=%D9%85%D8%B4%D9%87%D8%AF

//! اوقات شرعی هر شهر گرفته میشود   باید نام شهر به تابع ارسال شود

Future<OghatSharE> getData(String cityName) async {
  //https://api.keybit.ir/owghat/?city=%D9%85%D8%B4%D9%87%D8%AF
  final response =
      await http.get(Uri.parse('https://api.keybit.ir/owghat/?city=$cityName'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return OghatSharE.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

import 'dart:convert';

import 'package:car_mark/data/dto/parking_lot_dto.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ParkingLotApi {
  Future<ParkingLotDto> fetchPark() async {
    final apiKey = dotenv.env['API_KEY'];
    final url =
        'http://openapi.seoul.go.kr:8088/$apiKey/json/GetParkingInfo/1/5';

    final http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> jsonString = jsonDecode(response.body);
    return ParkingLotDto.fromJson(jsonString);
  }
}

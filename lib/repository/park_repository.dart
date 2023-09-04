import 'package:car_mark/data/model/park.dart';

abstract interface class ParkRepository {
  Future<List<Park>> getParkInfo();
}

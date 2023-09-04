import 'package:car_mark/data/api/parking_lot_api.dart';
import 'package:car_mark/data/mapper/park_mapper.dart';
import 'package:car_mark/data/model/park.dart';
import 'package:car_mark/repository/park_repository.dart';

class ParkRepositoryImpl implements ParkRepository {
  final _api = ParkingLotApi();

  @override
  Future<List<Park>> getParkInfo() async {
    final resultDto = await _api.fetchPark();
    if (resultDto.getParkingInfo == null) {
      return [];
    }
    return resultDto.getParkingInfo!.row!.map((e) => e.toPark()).toList();
  }
}

import 'package:car_mark/data/dto/parking_lot_dto.dart';
import 'package:car_mark/data/model/park.dart';

extension ToPark on Row {
  Park toPark() {
    return Park(
      parkingName: parkingname ?? '',
      parkingCode: parkingcode ?? '',
      capacity: capacity ?? 0.0,
      currentParking: curparking ?? 0.0,
      lat: lat ?? 0.0,
      lng: lng ?? 0.0,
    );
  }
}
